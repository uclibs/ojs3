{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}
	</div><!-- pkp_structure_content -->

	<footer class="footer" role="contentinfo">
		<div class="container">
			<div class="row">
                <div class="col-sm-4">
                    <p><a href="{$baseUrl}">Journals@UC Terms of Use</a></p>
                    <p><a href="https://www.uc.edu/alert.html">UC Alerts</a></p>
                    <p><a href="https://commercialization.uc.edu/copyright-infringement">Copyright Information &copy; 2017 University of Cincinnati</a></p>
                </div>
                <div class="col-sm-4 text-center">
                    <p><a href="http://uc.edu/about/policies/non-discrimination.html">Notice of Non-Discrimination</a></p>
                    <p><a href="https://www.uc.edu/publicsafety/clery/annual-security-report.html">Clery and HEOA Notice</a></p>
                    <p><a href="https://www.uc.edu/ucit/community/accessibility/eAccessibility-form.html">eAccessibility Concern</a></p>
                </div>
                <div class="col-sm-4">
                    <p>
                        <a href="https://uc.edu">
                            <img class="img-responsive footer-logo" src="{$baseUrl}/templates/images/uc/UC_ID_SecondaryWhite.png">
                        </a>
                    </p>
                </div>
			</div> <!-- .row -->
		</div><!-- .container -->
	</footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
