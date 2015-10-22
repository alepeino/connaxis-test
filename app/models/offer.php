<?php
class Offer extends AppModel {

    var $belongsTo = array(
        'GameCollection' => array(
            'className' => 'GameCollection',
            'foreignKey' => 'game_collection_id'
        )
    );

    var $hasOne = array(
        'Trade' => array(
            'className' => 'Trade',
            'foreignKey' => 'offer_id'
        )
    );

}