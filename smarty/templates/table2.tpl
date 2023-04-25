{*{include file="headner.tpl"}*}

{*{include file="select.tpl"}*}

<div id="table"></div>

<div class="m-4 d-flex flex-row-reverse">
    <button id="download-xlsx" class="btn btn-success">Download XLSX</button>
    <button id="print-table" class="btn btn-secondary mx-1">Print Table</button>
</div>

{*    <script src="https://cdn.jsdelivr.net/npm/luxon/build/global/luxon.min.js"></script>*}
<script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
    <script type="text/javascript" src="js/tabulator.min.js"></script>
<script>
    let data = {$response};
    console.log(data);
    {literal}
    let table = new Tabulator("#table", {
       pagination: true,
       paginationSize:5,

       data:data,
       layout:"fitColumns",
       columns:[
           {title:"Id", field:"Id"},
           {title:"Nazwa", field:"name"},
           {title:"Rozmiar", field:"size"},
           {title:"W magazynie", field:"stock"},
       ],
    });

    document.getElementById("download-xlsx").addEventListener("click", function(){
        table.download("xlsx", "data.xlsx", {sheetName:"My Data"});
    });

    document.getElementById("print-table").addEventListener("click", function(){
        table.print(false, true);
    });
</script>
{/literal}
{*{include file='footer.tpl'}*}