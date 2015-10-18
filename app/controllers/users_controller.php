<?php
class UsersController extends AppController {

	function login() {
		if ($this->Auth->user()) {
			$this->redirect($this->Auth->logout());
		}
	}

	function logout() {
		$this->redirect($this->Auth->logout());
	}

}
