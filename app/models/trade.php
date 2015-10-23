<?php
class Trade extends AppModel {

    var $belongsTo = array(
        'Offer' => array(
            'className' => 'Offer',
            'foreignKey' => 'offer_id'
        ),
        'Request' => array(
            'className' => 'Request',
            'foreignKey' => 'request_id'
        ),
    );

}