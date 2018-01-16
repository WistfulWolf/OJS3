<?php
/**
 * @defgroup plugins_blocks_issn ISSN Block Plugin
 */
 
/**
 * @file plugins/blocks/issn/index.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_blocks_issn
 * @brief Wrapper for issn block plugin.
 *
 */

require_once('IssnBlockPlugin.inc.php');

return new IssnBlockPlugin();

?> 
