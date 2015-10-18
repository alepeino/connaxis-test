<?php
/* User Test cases generated on: 2015-10-17 22:38:21 : 1445121501*/
App::import('Model', 'User');

class UserTestCase extends CakeTestCase {
	var $fixtures = array('app.user', 'app.offer', 'app.request', 'app.game_collections', 'app.game');

	function startTest() {
		$this->User =& ClassRegistry::init('User');
	}

	function endTest() {
		unset($this->User);
		ClassRegistry::flush();
	}

}
