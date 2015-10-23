<h2><?php __('My Collection'); ?></h2>

<?php if (!empty($collection)): ?>
    <table>
    <?php
    echo $this->Html->tableHeaders(
        array(
            __('Game', true),
            __('Condition', true),
            __('Price', true),
            __('Offered', true)
        )
    );

    foreach ($collection as $game) {
        $match = '';
        if ($game['Offer'] && $game['Offer'][0]['Trade']) {
            $match = $this->Html->link(
                __('Match Found!', true),
                array(
                    'controller' => 'trades',
                    'action' => 'confirm',
                    $game['Offer'][0]['Trade']['id']),
                array('class' => 'button match')
            );
        }

        echo $this->Html->tableCells(
            array(
                $game['Game']['title'],
                $game['GameCondition']['title'],
                $game['Game']['price'],
                $game['Offer']
                    ? $this->Time->format('d/m/Y', $game['Offer'][0]['created']) . $match
                    : $this->Html->link(
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
    <?php __("You don't have any games in your collection."); ?>
<?php endif; ?>

<div class="centered">
    <?php
    echo $this->Html->link(
        __('Add Game', true),
        array('controller' => 'game_collections', 'action' => 'find_game'),
        array('class' => 'button')
    );
    ?>
</div>