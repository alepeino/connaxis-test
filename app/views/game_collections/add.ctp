<h2><?php __('My Collection'); ?></h2>
<h3><?php __('Confirm addition'); ?></h3>

<?php
echo $this->Session->flash();

echo $this->Form->create('GameCollection');
echo $this->Form->input(
    'Game.title',
    array('label' => 'Game Title', 'readonly' => 'readonly')
);
echo $this->Form->input(
    'GameCondition.id',
    array(
        'label' => 'Game condition',
        'options' => $game_conditions
    )
);
echo $this->Form->input(
    'Game.price',
    array('readonly' => 'readonly')
);
echo $this->Form->input('Game.id');
echo $this->Form->end('Confirm');