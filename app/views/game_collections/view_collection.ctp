<h2><?php __('My Collection'); ?></h2>

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
    echo $this->Html->tableCells(
        array(
            $game['Game']['title'],
            $game['GameCondition']['title'],
            $game['Game']['price'],
            $game['Offer']
                ? $this->Time->format('d/m/Y', $game['Offer'][0]['created'])
                : $this->Html->link(__('Offer now', true), '/myoffers/3')
        )
    );
}
?>
</table>
