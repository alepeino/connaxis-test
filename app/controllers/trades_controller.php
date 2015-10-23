<?php
class TradesController extends AppController {

	function confirm($trade_id=null) {
		$trade = $this->Trade->Offer->find('all',
			array(
				'recursive' => 3,
				'conditions' => array (
					'Trade.id' => $trade_id,
					'Trade.status' => 1,
					'GameCollection.user_id' => $this->Auth->user('id')
				)
			)
		)[0];

		if (empty($this->data)) {
			$this->data = $trade;
		}
		else {
			if ($trade['Trade']['Offer']['GameCollection']['user_id']
				!= $this->Auth->user('id')
			) {
				$this->Session->setFlash(__('Invalid game', true));
				$this->redirect('/myoffers');
			}
			else{
				if (isset( $this->params['form']['cancel'])) {
					$this->Trade->query("CALL confirm_trade('$trade_id', 0)");
					$this->Session->setFlash(__('Trade cancelled', true));
					$this->redirect('/myoffers');
				}
				else {
					$this->Trade->query("CALL confirm_trade('$trade_id', 1)");
					$game_price = $trade['Trade']['Request']['Game']['price'];
					$this->Session->write(
						'Auth.User.account_balance',
						$this->Auth->user('account_balance')
						+ $game_price
					);
					$this->Session->setFlash(__('Trade confirmed', true));
					$this->redirect('/myoffers');
				}
			}
		}
	}

}
