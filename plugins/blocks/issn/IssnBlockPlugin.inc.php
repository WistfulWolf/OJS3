<?php

/**
 * @file plugins/blocks/issn/IssnBlockPlugin.inc.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class IssnBlockPlugin
 * @ingroup plugins_blocks_information
 *
 * @brief Class for issn block plugin
 */

import('lib.pkp.classes.plugins.BlockPlugin');

class IssnBlockPlugin extends BlockPlugin {
	/**
	 * Install default settings on journal creation.
	 * @return string
	 */
	function getContextSpecificPluginSettingsFile() {
		return $this->getPluginPath() . '/settings.xml';
	}

	/**
	 * Get the display name of this plugin.
	 * @return String
	 */
	function getDisplayName() {
		return __('plugins.block.issn.displayName');
	}

	/**
	 * Get a description of the plugin.
	 */
	function getDescription() {
		return __('plugins.block.issn.description');
	}

	/**
	 * @see BlockPlugin::getContents
	 */
	function getContents($templateMgr, $request = null) {
		$journal = $request->getJournal();
		if (!$journal) return '';

		$onlineIssn = $journal->getData('onlineIssn');
		$printIssn = $journal->getData('printIssn');

		$templateMgr->assign(array(
			'onlineIssn' => $onlineIssn,
			'printIssn' => $printIssn
		));
		return parent::getContents($templateMgr, $request);
	}
}

?>
