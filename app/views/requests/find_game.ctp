<h2><?php __('My Requests'); ?></h2>
<h3><?php __('Select Game to place a Request'); ?></h3>

<table>
    <?php
    echo $this->Html->tableHeaders(array(
        $this->Paginator->sort(__('Title', true), 'title'),
        $this->Paginator->sort(__('Price', true), 'price')
    ));

    foreach ($data as $game) {
        echo $this->Html->tableCells(array(
            $this->Html->link(
                $game['Game']['title'],
                array(
                    'controller' => 'requests',
                    'action' => 'add',
                    $game['Game']['id']
                )
            ),
            $game['Game']['price']
        ));
    } ?>
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
