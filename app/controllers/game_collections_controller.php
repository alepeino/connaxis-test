<?php
class GameCollectionsController extends AppController {

	function view_collection() {
		$collection = $this->GameCollection->find('all',
			array (
				'conditions' => array (
					'GameCollection.user_id' => $this->Auth->user('id')
				)
			)
		);
		$this->set('collection',$collection);
	}

}
