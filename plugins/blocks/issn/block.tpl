{**
 * plugins/blocks/issn/block.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- Journals ISSN.
 *
 *}
 {if !empty($onlineIssn) || !empty($printIssn)}
	<div class="pkp_block block_issn">
		<div class="content" style="font-size: 13px;">
			<ul>
				{if !empty($onlineIssn)}
					<li>
						{translate key="common.onlineIssn"}: {$onlineIssn}
					</li>
				{/if}
				{if !empty($printIssn)}
					<li>
						{translate key="common.printIssn"}: {$printIssn}
					</li>
				{/if}
			</ul>
		</div>
	</div>
{/if}