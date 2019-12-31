{template personName Person summary=on}{strip}
    {escape(tif($.User->hasAccountLevel('Staff') ? $Person->FullName : $Person->FirstName))}
    {if $summary && $Person->isA('Emergence\People\IUser')}
        &thinsp;
        {if $Person->hasAccountLevel('Administrator')}
            (Administrator)
        {elseif $Person->hasAccountLevel('Staff')}
            (Staff)
        {/if}
    {/if}
{/strip}{/template}
