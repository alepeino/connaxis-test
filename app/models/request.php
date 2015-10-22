<?php
class Request extends AppModel {

    var $belongsTo = array(
        'Game' => array(
            'className' => 'Game',
            'foreignKey' => 'game_id'
        ),
        'User' => array(
            'className' => 'User',
            'foreignKey' => 'user_id'
        ),
        'GameCondition' => array(
            'className' => 'GameCondition',
            'foreignKey' => 'game_condition_id'
        )
    );

}