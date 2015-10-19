<?php
/* GameCollection Fixture generated on: 2015-10-18 15:34:48 : 1445182488 */
class GameCollectionFixture extends CakeTestFixture {
	var $name = 'GameCollection';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'game_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'index'),
		'user_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 20, 'key' => 'index'),
		'game_condition_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'index'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1), 'game_id' => array('column' => 'game_id', 'unique' => 0), 'userpanel_id' => array('column' => 'user_id', 'unique' => 0), 'game_condition_id' => array('column' => 'game_condition_id', 'unique' => 0)),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1,
			'game_id' => 1,
			'user_id' => 1,
			'game_condition_id' => 1,
			'created' => '2015-10-18 15:34:48',
			'modified' => '2015-10-18 15:34:48'
		),
	);
}
