<?php
/* GameCollection Test cases generated on: 2015-10-18 15:34:48 : 1445182488*/
App::import('Model', 'GameCollection');

class GameCollectionTestCase extends CakeTestCase {
	var $fixtures = array('app.game_collections', 'app.game', 'app.request', 'app.user', 'app.offer', 'app.game_condition');

	function startTest() {
		$this->GameCollection =& ClassRegistry::init('GameCollection');
	}

	function endTest() {
		unset($this->GameCollection);
		ClassRegistry::flush();
	}

}
