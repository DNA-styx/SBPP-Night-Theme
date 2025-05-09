<div class="front-module-intro">
    <table width="100%" cellpadding="1">
        <tr>
            <td>
                {$dashboard_text}
            </td>
        </tr>
    </table>
</div>


<div id="front-servers">
    {include file='page_servers.tpl'}
</div>

<div class="front-module" style="width:100%">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="4">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Added Bans
                        </td>
                        <td align="right">
                            Total bans: {$total_bans}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr height="16">
            <td width="16" class="listtable_top">MOD</td>
            <td width="24%" class="listtable_top" align="center"><strong>Date/Time</strong></td>
            <td class="listtable_top"><strong>Name</strong></td>
            <td width="14%" class="listtable_top"><strong>Length</strong></td>
        </tr>
        {foreach from=$players_banned item=player}
            <tr onclick="{$player.link_url}" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor:pointer;" height="16">
                <td class="listtable_1" align="center"><img src="images/games/{$player.icon}" width="16" alt="MOD" title="MOD" /></td>
                <td class="listtable_1" align="center">{$player.created}</td>
                <td class="listtable_1">
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        {$player.short_name|escape:'html'}
                    {/if}
                </td>
                <td class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
            </tr>
        {/foreach}
    </table>
</div>
<br /><br /><br />
<div class="front-module dashboard-ban-blocks">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="3">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Players Blocked
                        </td>
                        <td align="right">
                            Total Stopped: {$total_blocked}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="16px" height="16" class="listtable_top">&nbsp;</td>
            <td height="25%" class="listtable_top dashboard-ban-block-date"><b>Date/Time</b></td>
            <td height="16" class="listtable_top"><b>Name</b></td>
        </tr>
        {foreach from=$players_blocked item=player}
            <tr{if $dashboard_lognopopup} onclick="{$player.link_url}"{else} onclick="{$player.popup}"{/if} onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor: pointer;" id="{$player.server}" title="Querying Server Data...">
                <td width="16" height="16" align="center" class="listtable_1"><i class="fas fa-ban fa-lg"></i></td>
                <td width="25%" height="16" class="listtable_1">{$player.date}</td>
                <td height="16" class="listtable_1">
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        <span>{$player.short_name|escape:'html'}</span>
                    {/if}
                </td>
            </tr>
        {/foreach}
    </table>
</div>

<div class="dashboard-blocks-separate">
    <br /><br /><br />
</div>

<div class="front-module dashboard-comm-blocks">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="4">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Comm Blocks
                        </td>
                        <td align="right">
                            Total blocks: {$total_comms}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr height="16">
            <td width="16" class="listtable_top">Type</td>
            <td width="24%" class="listtable_top" align="center"><strong>Date/Time</strong></td>
            <td class="listtable_top"><strong>Name</strong></td>
            <td width="23%" class="listtable_top"><strong>Length</strong></td>
        </tr>
        {foreach from=$players_commed item=player}
            <tr onclick="{$player.link_url}" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor:pointer;" height="16">
                <td class="listtable_1" align="center"><i class="{$player.type}"></i></td>
                <td class="listtable_1">{$player.created}</td>
                <td class="listtable_1">
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        {$player.short_name|escape:'html'}
                    {/if}
                </td>
                <td class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
            </tr>
        {/foreach}
    </table>
</div>
