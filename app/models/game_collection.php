<?php
class GameCollection extends AppModel {
	var $name = 'GameCollection';
	var $actsAs = array('Containable');

	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Game' => array(
			'className' => 'Game',
			'foreignKey' => 'game_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'GameCondition' => array(
			'className' => 'GameCondition',
			'foreignKey' => 'game_condition_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'Offer' => array(
			'className' => 'Offer',
			'foreignKey' => 'game_collection_id',
			'dependent' => false,
			'conditions' => array('status' => 1),
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

}
