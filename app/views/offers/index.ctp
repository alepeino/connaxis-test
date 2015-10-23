<h2><?php __('My Offers'); ?></h2>

<?php if (!empty($offers)): ?>
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

        foreach ($offers as $offer) {
            $match = '';
            if ($offer['Trade']['id']) {
                $match = $this->Html->link(
                    __('Match Found!', true),
                    array('controller' => 'trades', 'action' => 'confirm', $offer['Trade']['id']),
                    array('class' => 'button match')
                );
            }

            echo $this->Html->tableCells(
                array(
                    $offer['GameCollection']['Game']['title'],
                    $offer['GameCollection']['GameCondition']['title'],
                    $offer['GameCollection']['Game']['price'],
                    $this->Time->format('d/m/Y', $offer['Offer']['created'])
                        . $match
                )
            );
        }
        ?>
    </table>
<?php else: ?>
    <?php __("You don't have any current offer."); ?>
<?php endif; ?>

<div class="centered">
    <?php
    echo $this->Html->link(
        __('New Offer', true),
        array('controller' => 'offers', 'action' => 'place_offer'),
        array('class' => 'button')
    );
    ?>
</div>
