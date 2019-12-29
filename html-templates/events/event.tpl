{extends "designs/site.tpl"}

{block title}{_ 'Event'} &mdash; {$dwoo.parent}{/block}

{block content}
    {$Event = $data}

    <div class="page-header">
        {*
        <ol class="breadcrumb">
            <li><a href="/events">{_ "Events"}</a></li>
            <li><a href="{$Event->getUrl()}">{$Event->Title|escape}</a></li>
        </ol>
        *}
        <div class="btn-toolbar pull-right">
            {if $.User}
                <form action="{$Event->getUrl(edit)}">
                    <button class="btn btn-success" type="submit">{glyph "pencil"}&nbsp;{_ "Edit Event&hellip;"}</button>
                </form>
            {/if}
        </div>
        <h1>{$Event->Title|escape}</h1>
    </div>
    <div class="row">
        <div class="col-md-3">
            <ul class="row list-unstyled">
                {if $Event->Status != 'published'}
                    <li class="col-sm-3 col-md-12">
                        <p>
                            <b>Status</b><br/>
                            {$Event->Status}
                        </p>
                    </li>
                {/if}

                <li class="col-sm-3 col-md-12">
                    <p>
                        <b>Start time</b><br/>
                        {timestamp $Event->StartTime time=yes}
                    </p>
                </li>

                {if $Event->EndTime}
                <li class="col-sm-3 col-md-12">
                    <p>
                        <b>End time</b><br/>
                        {timestamp $Event->EndTime time=yes}
                    </p>
                </li>
                {/if}

                <li class="col-sm-3 col-md-12">
                    <p>
                        <b>Location</b><br/>
                        <a href="https://www.google.com/maps?q={$Event->Location|escape:url}">{$Event->Location|escape}</a>
                    </p>
                </li>

                {if $Event->Location}
                <li class="col-sm-3 col-md-12">
                    <p>
                        <b>Location</b><br/>
                        <a href="https://www.google.com/maps?q={$Event->Location|escape:url}">{$Event->Location|escape}</a>
                    </p>
                </li>
                {/if}
            </ul>
        </div>

        <div class="col-md-9">
            {if $Event->Description}
                <div class="well">
                    <div class="content-markdown event-description">{$Event->Description|truncate:600|escape|markdown}</div>
                </div>
            {/if}

            {if $Event->Segments}
                <h2>Segments</h2>

                {$lastDate = null}

                {foreach item=Segment from=$Event->Segments}
                    {$thisDate = date("l, F jS", $Segment->StartTime)}

                    {if $lastDate != $thisDate}
                        {if $lastDate}
                            </dl>
                        {/if}
                        <h3>{$thisDate}</h3>
                        <dl class="dl-horizontal">
                        {$lastDate = $thisDate}
                    {/if}
                            <dt>{time_range $Segment->StartTime $Segment->EndTime}</dt>
                            <dd>
                                <a href="{$Event->getUrl("segments/$Segment->Handle")}">{$Segment->Title|escape}</a>
                                {if $Segment->LocationName || $Segment->LocationAddress}
                                    <p>
                                        <strong>Location</strong>
                                        <a target="_blank" href="https://maps.google.com?q={implode(', ', array_filter(array($Segment->LocationName, $Segment->LocationAddress)))|escape:url}">
                                            {if $Segment->LocationName && $Segment->LocationAddress}
                                                {$Segment->LocationName|escape} ({$Segment->LocationAddress|escape})
                                            {else}
                                                {$Segment->LocationName|default:$Segment->LocationAddress|escape}
                                            {/if}
                                        </a>
                                    </p>
                                {/if}
                                <div class="content-markdown event-segment-description">{$Segment->Description|escape|markdown}</div>
                            </dd>
                {/foreach}
            {/if}
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2780.934537168248!2d15.97391761532183!3d45.812569418151554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4765d6fdba84b86d%3A0xdafaf953a30b1538!2sNeboder+Ilica+1%2C+Ilica+1%2C+10000%2C+Zagreb!5e0!3m2!1sen!2shr!4v1481373653626" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        <!-- Google Maps embed with API -->
        <!-- https://developers.google.com/maps/documentation/embed/ -->
          <iframe src="//www.google.com/maps/embed/v1/place?q={$Event->Location|escape:url}
            &zoom=17
            &key=YOUR_API_KEY">
          </iframe>
        </div>
    </div>
{/block}