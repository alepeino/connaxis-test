<h2><?php __('Trade Confirmation'); ?></h2>

<?php
echo $this->Session->flash();

echo $this->Form->create('Trade');

echo $this->Form->input(
    'GameCollection.Game.title',
    array('label' => __('Game Title', true), 'readonly' => 'readonly')
);

echo $this->Form->input(
    'GameCollection.Game.price',
    array('label' => __('Price', true), 'readonly' => 'readonly')
);
?>

<div class="ok-cancel">
    <?php echo $this->Form->submit(__('Confirm', true), array('name' => 'confirm')); ?>
    <?php echo $this->Form->submit(__('Cancel', true), array('name' => 'cancel')); ?>
</div>

<?php echo $this->Form->end(); ?>