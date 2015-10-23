<?php
class OffersController extends AppController {

    var $uses = array('Offer', 'GameCollection');

    function index() {
        $offers = $this->Offer->find('all',
            array (
                'recursive' => 2,
                'conditions' => array (
                    'Offer.status' => 1,
                    'GameCollection.user_id' => $this->Auth->user('id')
                )
            )
        );
        $this->set('offers', $offers);
    }

    function place_offer() {
        $collection = $this->GameCollection->find('all',
            array (
                'conditions' => array (
                    'User.id' => $this->Auth->user('id'),
                    'NOT EXISTS (
                        SELECT id FROM offers
                        WHERE offers.game_collection_id = GameCollection.id)'
                )
            )
        );
        $this->set('collection', $collection);
    }

    function add($game_collection_id=null) {
        if (empty($this->data)) {
            $game_collection = $this->GameCollection->findById($game_collection_id);
            if ($game_collection['User']['id'] != $this->Auth->user('id')) {
                $this->Session->setFlash(__('Invalid game', true));
                $this->redirect('/myoffers/place_offer');
            }
            else {
                $this->data = $game_collection;
            }
        }
        else {
            $this->Offer->saveField('game_collection_id', $this->data['GameCollection']['id']);
            $this->Session->setFlash(__('Offer confirmed', true));
            $this->redirect('/mycollection');
        }
    }

}