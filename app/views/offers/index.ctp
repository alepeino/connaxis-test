<h2><?php __('My Offers'); ?></h2>

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
        echo $this->Html->tableCells(
            array(
                $offer['GameCollection']['Game']['title'],
                $offer['GameCollection']['GameCondition']['title'],
                $offer['GameCollection']['Game']['price'],
                $this->Time->format('d/m/Y', $offer['Offer']['created'])
            )
        );
    }
    ?>
</table>

<?php
echo $this->Html->link(
    __('New Offer', true),
    array('controller' => 'offers', 'action' => 'place_offer'),
    array('class' => 'button')
);
?>
