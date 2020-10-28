{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

{* Determine whether a logo or title string is being displayed *}
{assign var="showingLogo" value=true}
{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
    {assign var="showingLogo" value=false}
{/if}

<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="core:frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}">
<div class="pkp_structure_page">

    <nav id="accessibility-nav" class="sr-only" role="navigation" aria-labelled-by="accessible-menu-label">
        <div id="accessible-menu-label">
            {translate|escape key="plugins.themes.bootstrap3.accessible_menu.label"}
        </div>
        <ul>
            <li>
                <a href="#main-navigation">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_navigation"}</a>
            </li>
            <li>
                <a href="#main-content">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_content"}</a>
            </li>
            <li><a href="#sidebar">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.sidebar"}</a></li>
        </ul>
    </nav>

    {* Header *}
    <header class="navbar navbar-default" id="headerNavigationContainer" role="banner" style="background: #e00122 url('{$baseUrl}/templates/images/uc/wavy-banner.png') no-repeat bottom center; background-size: cover;">

        <div class="row">
            <div class="col-sm-6">
                <div class="site-name">
                    <a href="https://ucincinnatipress.uc.edu/" class="navbar-brand navbar-brand-logo">
                        <img src="{$baseUrl}/templates/images/uc/UC_Press_White.png"
                             alt="University of Cincinnati Press Logo">
                    </a>
                    <a href="https://journals.uc.edu" class="navbar-brand navbar-brand-logo">
                        <img src="{$baseUrl}/templates/images/uc/journals-uc-white-at.png"
                             alt="Journals@UC Logo" class="journals-icon">
                    </a>
                </div>
            </div>
            <div class="col-sm-6">

                {* User profile, login, etc, navigation menu*}
                <div class="container-fluid">
                    <div class="row">
                        <nav aria-label="{translate|escape key="common.navigation.user"}">
                            {load_menu name="user" id="navigationUser" ulClass="nav nav-pills tab-list pull-right"}
                        </nav>
                    </div><!-- .row -->
                </div><!-- .container-fluid -->

                <div class="container-fluid">

                    <div class="navbar-header">

                        {* Mobile hamburger menu *}
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#nav-menu" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    {* Primary site navigation *}
                    <nav id="nav-menu" class="navbar-collapse collapse"
                         aria-label="{translate|escape key="common.navigation.site"}">
                        {* Primary navigation menu for current application *}
                        {load_menu name="primary" id="main-navigation" ulClass="nav navbar-nav"}

                        {* Search form *}
                        {if !$noContextsConfigured}
                            <div class="pull-md-right">
                                {include file="frontend/components/searchForm_simple.tpl"}
                            </div>
                        {/if}
                    </nav>

                </div><!-- .pkp_head_wrapper -->
            </div>
        </div>
    </header><!-- .pkp_structure_head -->

    {* Wrapper for page content and sidebars *}
    <div class="pkp_structure_content container">
        <main class="pkp_structure_main col-xs-12 col-sm-10 col-md-8" role="main">
