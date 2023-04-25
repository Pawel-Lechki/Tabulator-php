{include file="headner.tpl"}

<div id="table"></div>

<div id="example-table"></div>

    <script src="https://cdn.jsdelivr.net/npm/luxon/build/global/luxon.min.js"></script>
    <script type="text/javascript" src="js/tabulator.min.js"></script>
<script>
    let data = {$data};
    console.log(data);
    {literal}
    let table = new Tabulator("#table", {
       height:205,
       data:data,
       layout:"fitColumns",
       columns:[
           {title:"Id", field:"Id"},
           {title:"Nazwa", field:"name"},
           {title:"Rozmiar", field:"size"},
           {title:"W magazynie", field:"stock"},
       ],
    });

</script>
{/literal}
{include file='footer.tpl'}