<h2><?php __('My Offers'); ?></h2>
<h3><?php __('Confirm Offer'); ?></h3>

<?php
echo $this->Session->flash();

echo $this->Form->create('Offer');
echo $this->Form->input(
    'Game.title',
    array('label' => __('Game Title', true), 'readonly' => 'readonly')
);
echo $this->Form->input(
    'Game.price',
    array('label' => __('Price', true), 'readonly' => 'readonly')
);
echo $this->Form->input(
    'GameCondition.title',
    array('label' => __('Game condition', true), 'readonly' => 'readonly')
);
echo $this->Form->input('GameCollection.id');
echo $this->Form->end(__('Confirm', true));
?>