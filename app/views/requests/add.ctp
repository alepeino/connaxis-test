<h2><?php __('My Request'); ?></h2>
<h3><?php __('Confirm Request'); ?></h3>

<?php
echo $this->Session->flash();

echo $this->Form->create('Request');
echo $this->Form->input(
    'Game.title',
    array('label' => 'Game Title', 'readonly' => 'readonly')
);
echo $this->Form->input('Game.id');
echo $this->Form->input(
    'Game.price',
    array('readonly' => 'readonly')
);
echo $this->Form->input(
    'GameCondition.id',
    array(
        'label' => 'Minimum game condition',
        'options' => $game_conditions
    )
);
echo $this->Form->end(__('Confirm', true));