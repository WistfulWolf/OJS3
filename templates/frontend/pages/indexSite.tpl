{**
 * templates/frontend/pages/indexSite.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site index.
 *
 *}
{include file="frontend/components/header.tpl"}

<div class="page_index_site">

	{if $about}
		<div class="about_site">
			{$about|nl2br}
		</div>
	{/if}

	<div class="journals">
		<h2>
			{translate key="journal.journals"}
		</h2>
		{if !count($journals)}
			{translate key="site.noJournals"}
		{else}
			{iterate from=journals item=journal}
				{capture assign="url"}{url journal=$journal->getPath()}{/capture}
				{assign var="thumb" value=$journal->getLocalizedSetting('journalThumbnail')}
				{assign var="description" value=$journal->getLocalizedDescription()}
				{if $thumb}
					{assign var="altText" value=$journal->getLocalizedSetting('journalThumbnailAltText')}
					<div class="thumb">
						<a href="{$url|escape}">
							<img src="{$journalFilesPath}{$journal->getId()}/{$thumb.uploadName|escape:"url"}"{if $altText} alt="{$altText|escape}"{/if}>
						</a>
					</div>
				{/if}
			{/iterate}

			{if $journals->getPageCount() > 0}
				<div class="cmp_pagination">
					{page_info iterator=$journals}
					{page_links anchor="journals" name="journals" iterator=$journals}
				</div>
			{/if}
		{/if}
	</div>

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
