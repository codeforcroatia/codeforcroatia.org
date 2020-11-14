{extends cfapi/master.tpl}

{block content}
    {$cfapiBrigadeId = 'Code-for-Croatia'}
    {$dwoo.parent}
{/block}

{block footer}
    {$dwoo.parent}
    <br>
    {capture assign=pageTemplate}<a href="http://azmind.com/2015/03/15/bootstrap-registration-forms-3-free-responsive-templates/" target="_blank">Azmind</a>{/capture}
    {capture assign=backgroundPhoto}<a href="https://twitter.com/ylodi">Ylodi</a>{/capture}
    {sprintf(_("Zahvale %s za Bootstrap Registration Form Template. CodeAcross 2015 fotografiju u pozadini ustupio %s."), $pageTemplate, $backgroundPhoto)}
{/block}