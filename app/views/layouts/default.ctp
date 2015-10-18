<?php
/**
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.view.templates.layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
?>
<!doctype html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('CakePHP: the rapid development php framework:'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>
		$(function() {
			$(".dropdown-toggle").click(function () {
				$(this).next(".dropdown").slideToggle();
			});
		});
	</script>
	<?php
		echo $this->Html->meta('icon');

		echo $this->Html->css('connaxis');

		echo $scripts_for_layout;
	?>
</head>
<body>
	<div id="container">

		<div id="header">
			<h1><?php echo $this->Html->link(__('Connaxis-Test', true), '/'); ?></h1>

			<?php if ($this->Session->read('Auth.User')) :?>
				<nav>
					<?php echo $this->Html->link(__('Requests', true), '/myrequests');?>
					<?php echo $this->Html->link(__('Offers', true), '/myoffers');?>
					<?php echo $this->Html->link(__('Collection', true), '/mycollection');?>
					<?php
						echo $this->Html->link(
							$this->Session->read('Auth.User.name'),
							'#',
							array('id' => 'nav-username', 'class' => 'dropdown-toggle')
						);
					?>
					<ul class="dropdown">
						<li>
							<?php   echo __("Balance") . ': $ ';
									echo $this->Session->read('Auth.User.account_balance')
							?>
						</li>
						<hr>
						<li><?php echo $this->Html->link(__('Log Out', true), '/users/logout');?></li>
					</ul>
				</nav>
			<?php endif; ?>
		</div>

		<div id="content">

			<?php echo $this->Session->flash(); ?>

			<?php echo $content_for_layout; ?>

		</div>

		<div id="footer"></div>
	</div>
	<?php echo $this->element('sql_dump'); ?>
</body>
</html>