<?php

/**
 * @file controllers/grid/settings/user/UserGridCellProvider.inc.php
 *
 * Copyright (c) 2017 Danov Dmitry
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class UserGridCellProvider
 * @ingroup controllers_grid_users_user
 *
 * @brief Base class for a cell provider that retrieves data for a user
 */

import('lib.pkp.classes.controllers.grid.DataObjectGridCellProvider');

class UserGridCellProvider extends DataObjectGridCellProvider {
	/**
	 * Constructor
	 */
	function __construct() {
		parent::__construct();
	}

	//
	// Template methods from GridCellProvider
	//
	/**
	 * Extracts variables for a given column from a data element
	 * so that they may be assigned to template before rendering.
	 * @param $row GridRow
	 * @param $column GridColumn
	 * @return array
	 */
	function getTemplateVarsFromRowColumn($row, $column) {
		$element = $row->getData();
		assert(is_a($element, 'User'));
		switch ($column->getId()) {
			case 'firstName': // User's first name
                return array('label' => $element->getLocalizedFirstName());

			case 'lastName': // User's last name
				return array('label' => $element->getLocalizedLastName());
		}
		assert(false);
	}
}

?>
