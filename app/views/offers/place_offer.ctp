<h2><?php __('My Offers'); ?></h2>
<h3><?php __('Offer Game from My Collection'); ?></h3>

<?php if (!empty($collection)): ?>
    <table>
        <?php
        echo $this->Html->tableHeaders(
            array(
                __('Game', true),
                __('Condition', true),
                __('Price', true),
                __('Offer', true)
            )
        );

        foreach ($collection as $game) {
            echo $this->Html->tableCells(
                array(
                    $game['Game']['title'],
                    $game['GameCondition']['title'],
                    $game['Game']['price'],
                    $this->Html->link(
                        __('Offer now', true),
                        array(
                            'controller' => 'offers',
                            'action' => 'add',
                            $game['GameCollection']['id']
                        )
                    )
                )
            );
        }
        ?>
    </table>
<?php else: ?>
    <?php __("You don't have any game to offer."); ?>
<?php endif; ?>