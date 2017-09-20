{**
 * templates/header/usernav.tpl
 *
 * Left top drop down menu.
 *}
{capture assign="dropDownTopLeftMenu"}
    {if $displayPageHeaderTitle && is_string($displayPageHeaderTitle)}
        {assign var=title value=$displayPageHeaderTitle}
    {elseif $currentContextName}
        {assign var=title value=$currentContextName}
    {else}
        {assign var=title value=$applicationName}
    {/if}

    <ul id="navigationContextMenu" class="pkp_nav_context pkp_nav_list" role="navigation" aria-label="{translate|escape key="common.navigation.siteContext"}">
        <li {if $multipleContexts}class="submenuOpensBelow"{/if} aria-haspopup="true" aria-expanded="false" title="{$title}">
            <span class="pkp_screen_reader">
                {translate key="context.current"}
            </span>

            <a href="#" class="pkp_current_context">
                {$title}
            </a>

            {if $multipleContexts}
                <h3 class="pkp_screen_reader">
                    {translate key="context.select"}
                </h3>
                <ul class="pkp_contexts">
                    {foreach from=$contextsNameAndUrl key=url item=name}
                        {if $currentContextName == $name}{php}continue;{/php}{/if}
                        <li title="{$name}">
                            <a href="{$url}">
                                {$name}
                            </a>
                        </li>
                    {/foreach}
                </ul>
            {/if}
        </li>
    </ul>
{/capture}
{include file="core:header/usernav.tpl" dropDownTopLeftMenu=$dropDownTopLeftMenu}