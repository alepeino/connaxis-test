<?php
/* Game Test cases generated on: 2015-10-17 22:50:00 : 1445122200*/
App::import('Model', 'Game');

class GameTestCase extends CakeTestCase {
	var $fixtures = array('app.game', 'app.request', 'app.game_collections', 'app.user');

	function startTest() {
		$this->Game =& ClassRegistry::init('Game');
	}

	function endTest() {
		unset($this->Game);
		ClassRegistry::flush();
	}

}
