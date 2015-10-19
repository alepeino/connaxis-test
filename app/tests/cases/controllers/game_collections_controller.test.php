<?php
/* GameCollections Test cases generated on: 2015-10-19 04:16:00 : 1445228160*/
App::import('Controller', 'GameCollections');

class TestGameCollectionsController extends GameCollectionsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class GameCollectionsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.game_collection', 'app.game', 'app.request', 'app.user', 'app.offer', 'app.trade', 'app.game_condition');

	function startTest() {
		$this->GameCollections =& new TestGameCollectionsController();
		$this->GameCollections->constructClasses();
	}

	function endTest() {
		unset($this->GameCollections);
		ClassRegistry::flush();
	}

}
