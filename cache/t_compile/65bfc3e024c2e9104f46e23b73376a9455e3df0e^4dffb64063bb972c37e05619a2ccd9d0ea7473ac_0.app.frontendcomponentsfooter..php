<?php
/* Smarty version 3.1.39, created on 2022-09-09 09:58:16
  from 'app:frontendcomponentsfooter.' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_631b46785a88b2_45764459',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4dffb64063bb972c37e05619a2ccd9d0ea7473ac' => 
    array (
      0 => 'app:frontendcomponentsfooter.',
      1 => 1662567831,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_631b46785a88b2_45764459 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/Users/crowesn/Development/ojs/ojs-3.3.0-11/lib/pkp/lib/vendor/smarty/smarty/libs/plugins/modifier.date_format.php','function'=>'smarty_modifier_date_format',),));
?>


	</div><!-- pkp_structure_main -->

		<?php if (empty($_smarty_tpl->tpl_vars['isFullWidth']->value)) {?>
		<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', "sidebarCode", null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['call_hook'][0], array( array('name'=>"Templates::Common::Sidebar"),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
		<?php if ($_smarty_tpl->tpl_vars['sidebarCode']->value) {?>
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.navigation.sidebar"),$_smarty_tpl ) ) ));?>
">
				<?php echo $_smarty_tpl->tpl_vars['sidebarCode']->value;?>

			</div><!-- pkp_sidebar.left -->
		<?php }?>
	<?php }?>
</div><!-- pkp_structure_content -->

<div class="pkp_structure_footer_wrapper row" role="contentinfo">
	<a id="pkp_content_footer"></a>

<div class="footer-column">
                    <p><a href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
">Journals@UC Terms of Use</a></p>
                    <p><a href="https://www.uc.edu/alert.html">UC Alerts</a></p>
                    <p><a href="https://commercialization.uc.edu/copyright-infringement">Copyright Information &copy; <?php echo smarty_modifier_date_format(time(),"%Y");?>
 University of Cincinnati</a></p>
</div>
<div class="footer-column">
                    <p><a href="http://uc.edu/about/policies/non-discrimination.html">Notice of Non-Discrimination</a></p>
                    <p><a href="https://www.uc.edu/publicsafety/clery/annual-security-report.html">Clery and HEOA Notice</a></p>
                    <p><a href="https://www.uc.edu/ucit/community/accessibility/eAccessibility-form.html">eAccessibility Concern</a></p>
</div>

		<div class="pkp_brand_footer column" role="complementary">
       <a href="https://uc.edu">
         <img class="img-responsive footer-logo" src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/plugins/themes/defaultJournalsUc/templates/images/UC_ID_SecondaryWhite.png" alt="University of Cincinnati logo">
			</a>
		</div>
	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_script'][0], array( array('context'=>"frontend"),$_smarty_tpl ) );?>


<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['call_hook'][0], array( array('name'=>"Templates::Common::Footer::PageFooter"),$_smarty_tpl ) );?>

</body>
</html>
<?php }
}
