<?php
class RequestsController extends AppController {

	var $paginate = array(
		'Game' => array(
			'order' => array('Game.title' => 'asc'),
			'limit' => 25
		)
	);

	function index() {
		$requests = $this->Request->find('all',
			array (
				'conditions' => array (
					'Request.status' => 1,
					'User.id' => $this->Auth->user('id')
				)
			)
		);

		$this->set('requests', $requests);
	}

	function find_game() {
		$data = $this->paginate('Game');
		$this->set('data', $data);
	}

	function add($game_id=null) {
		if (empty($this->data)) {
			$game = $this->Request->Game->findById($game_id);
			$game_conditions = $this->Request->GameCondition->find('list');
			$this->set('game_conditions', $game_conditions);
			$this->data = $game;
		}
		else {
			$this->data['User']['id'] = $this->Auth->user('id');
			$this->Request->saveAll($this->data);
			$this->Session->setFlash(__('Request confirmed', true));
			$this->redirect('/myrequests');
		}
	}

}
