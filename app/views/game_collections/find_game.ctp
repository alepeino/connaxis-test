<h2><?php __('My Collection'); ?></h2>
<h3><?php __('Choose a Game to add to your collection'); ?></h3>

<table>
    <tr>
        <th><?php echo $this->Paginator->sort('Title', 'title'); ?></th>
        <th><?php echo $this->Paginator->sort('Price', 'price'); ?></th>
    </tr>
    <?php foreach ($data as $game): ?>
        <tr>
            <td><?php
                    echo $this->Html->link(
                        $game['Game']['title'],
                        array(
                            'controller' => 'game_collections',
                            'action' => 'add',
                            $game['Game']['id']
                        )
                    );
                ?>
            </td>
            <td><?php echo $game['Game']['price']; ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<div class="table-paginator">
    <?php echo $this->Paginator->numbers(); ?>
    <?php echo $this->Paginator->prev(
        '« ' . __('Previous', true),
        null, null, array('class' => 'disabled')); ?>
    <?php echo $this->Paginator->next(
        __('Next', true) . ' »',
        null, null, array('class' => 'disabled')); ?>
    <?php echo $this->Paginator->counter(); ?>
</div>
