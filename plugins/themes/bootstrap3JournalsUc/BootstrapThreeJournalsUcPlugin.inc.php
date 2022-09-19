<?php

/**
 * @file plugins/themes/default/BootstrapThreeJournalsUcPlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Copyright (c) 2022 Sean Crowe
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class BootstrapThreeJournalsUcPlugin
 * @ingroup plugins_themes_default
 *
 * @brief Default theme
 */
import('lib.pkp.classes.plugins.ThemePlugin');

class BootstrapThreeJournalsUcPlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('bootstrapthreethemeplugin');
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.bootstrapThreeJournalsUc.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.bootstrapThreeJournalsUc.description');
	}
}

?>
