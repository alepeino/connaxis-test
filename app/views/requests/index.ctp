<h2><?php __('My Requests'); ?></h2>

<?php if (!empty($requests)): ?>
    <table>
        <?php
        echo $this->Html->tableHeaders(
            array(
                __('Game', true),
                __('Minimum Condition', true),
                __('Price', true),
                __('Requested', true)
            )
        );

        foreach ($requests as $request) {
            echo $this->Html->tableCells(
                array(
                    $request['Game']['title'],
                    $request['GameCondition']['title'],
                    $request['Game']['price'],
                    $this->Time->format('d/m/Y', $request['Request']['created'])
                )
            );
        }
        ?>
    </table>
<?php else: ?>
    <?php __("You don't have any current request."); ?>
<?php endif; ?>

<div class="centered">
    <?php
    echo $this->Html->link(
        __('New Request', true),
        array('controller' => 'requests', 'action' => 'find_game'),
        array('class' => 'button')
    );
    ?>
</div>
