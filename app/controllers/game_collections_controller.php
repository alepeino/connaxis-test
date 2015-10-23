<?php
class GameCollectionsController extends AppController {

	var $uses = array('Game', 'GameCollection', 'GameCondition');

	var $paginate = array(
		'Game' => array(
			'order' => array('Game.title' => 'asc'),
			'limit' => 25
		)
	);

	function index() {
		$collection = $this->GameCollection->find('all',
			array (
				'recursive' => 2,
				'conditions' => array (
					'GameCollection.user_id' => $this->Auth->user('id')
				)
			)
		);
		$this->set('collection', $collection);
	}

	function find_game() {
		$data = $this->paginate('Game');
		$this->set('data', $data);
	}

	function add($game_id=null) {
		if (empty($this->data)) {
			$game = $this->Game->findById($game_id);
			$game_conditions = $this->GameCondition->find('list');
			$this->set('game_conditions', $game_conditions);
			$this->data = $game;
		}
		else {
			$this->data['User']['id'] = $this->Auth->user('id');
			$this->GameCollection->saveAll($this->data);
			$this->redirect('/mycollection');
		}
	}

}
