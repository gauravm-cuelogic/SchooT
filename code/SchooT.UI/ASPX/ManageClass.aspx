<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageClass.aspx.cs" Inherits="ASPX_ManageClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="../assets/css/jquery-ui-1.7.1.custom.css" />
    <link rel="stylesheet" href="../assets/css/ui.jqgrid.css" />
    <link href="../assets/css/ui.jqgrid-bootstrap-ui.css" rel="stylesheet" />
    <link href="../assets/css/ui.jqgrid-bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/jquery-ui.min.css" rel="stylesheet" />

    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/grid.locale-en.js" type="text/javascript"></script>
    <script src="../assets/js/jquery.jqGrid.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-inner">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-head-line">Manage Classes</h1>
                <table id="jqGrid"></table>
                <div id="jqGridPager"></div>


            </div>
        </div>
    </div>

    <script type="text/javascript">
        var $NoConf = jQuery.noConflict();


        $NoConf(document).ready(function () {
            var template = "<div style='margin-left:15px;'><div> Customer ID <sup>*</sup>:</div><div> {CustomerID} </div>";
            template += "<div> Company Name: </div><div>{CompanyName} </div>";
            template += "<div> Phone: </div><div>{Phone} </div>";
            template += "<div> Postal Code: </div><div>{PostalCode} </div>";
            template += "<div> City:</div><div> {City} </div>";
            template += "<hr style='width:100%;'/>";
            template += "<div> {sData} {cData}  </div></div>";

            $NoConf("#jqGrid").jqGrid({
                url: 'data.json',
                // we set the changes to be made at client side using predefined word clientArray
                editurl: 'clientArray',
                datatype: "json",
                colModel: [
                    {
                        label: 'Customer ID',
                        name: 'CustomerID',
                        width: 75,
                        key: true,
                        editable: true,
                        editrules : { required: true}
                    },
                    {
                        label: 'Company Name',
                        name: 'CompanyName',
                        width: 140,
                        editable: true // must set editable to true if you want to make the field editable
                    },
                    {
                        label : 'Phone',
                        name: 'Phone',
                        width: 100,
                        editable: true
                    },
                    {
                        label: 'Postal Code',
                        name: 'PostalCode',
                        width: 80,
                        editable: true
                    },
                    {
                        label: 'City',
                        name: 'City',
                        width: 140,
                        editable: true
                    }
                ],
                sortname: 'CustomerID',
                sortorder : 'asc',
                loadonce: true,
                viewrecords: true,
                width: 780,
                height: 200,
                rowNum: 10,
                pager: "#jqGridPager"
            });

            $NoConf('#jqGrid').navGrid('#jqGridPager',
                // the buttons to appear on the toolbar of the grid
                { edit: true, add: true, del: true, search: false, refresh: false, view: false, position: "left", cloneToTop: false },
                // options for the Edit Dialog
                {
                    editCaption: "The Edit Dialog",
                    template: template,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                // options for the Add Dialog
                {
                    template: template,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                // options for the Delete Dailog
                {
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                });
        });

    </script>

</asp:Content>

