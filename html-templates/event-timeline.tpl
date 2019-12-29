{extends designs/site.tpl}

{block title}{_ "Events"} &mdash; {$dwoo.parent}{/block}

{block content}
    
    <center><h2>Vremenska karta događanja</h2></center>
    
        <p>Na vremenskoj karti potraži Datathons, Hackathons, Hack Nights, Hangouts, Open Data Maker Parties i sve ostale srodne manifestacije.</p>
        <br>
        <center><p><a class="btn btn-large btn-primary" href="#tbd"><i class="fa fa-map-marker"></i> {_ "Add your event on a map"}</a> <a class="btn btn-large btn-success" href="https://www.google.com/calendar/embed?src=dveug5v4a2uq633mrnsehvm4u4%40group.calendar.google.com&ctz=Europe/Belgrade"><i class="fa fa-calendar"></i> {_ "Code for Croatia calendar"}</a></p></center>

<iframe src="http://timemapper.okfnlabs.org/codeforcroatia/timeline?embed=1" style="border:0; position:fixed; top:50; left:0; right:0; bottom:50; width:100%; height:70%">

{/block}
