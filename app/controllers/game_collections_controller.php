<?php
class GameCollectionsController extends AppController {

	function index() {
		$collection = $this->GameCollection->find('all',
			array (
				'conditions' => array (
					'GameCollection.user_id' => $this->Auth->user('id')
				)
			)
		);
		$this->set('collection', $collection);
	}

}
