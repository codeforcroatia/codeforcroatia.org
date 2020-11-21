{extends designs/site.tpl}

{block title}{_ "Tag deleted"} &mdash; {$dwoo.parent}{/block}

{block content}
    <div class="page-header">
        <h1>{_ "Tag deleted"}</h1>
    </div>

    {capture assign=tagName}{$data->Title|escape}{/capture}
    <p class="lead">{sprintf(_("Tag %s has been removed from %s."), $tagName, Laddr::$siteName)}</p>

    <p><a href="/tags">{_ "Retun to tag list"}</a></p>
{/block}
