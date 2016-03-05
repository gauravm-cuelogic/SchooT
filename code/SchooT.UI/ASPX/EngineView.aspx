<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="EngineView.aspx.cs" Inherits="ASPX_EngineView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/fullcalendar.css" rel="stylesheet" />
    <link href="../assets/css/fullcalendar.print.css" rel="stylesheet" media="print" />

    <style>
        #calendar {
            max-width: 900px;
            margin: 0 auto;
        }

        .fc-time-grid-container {
            height: auto !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id='calendar'></div>


    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/fullcalendar.min.js"></script>

    <script>
        var $NoConf = jQuery.noConflict();
        $NoConf(document).ready(function () {
            $NoConf('#calendar').fullCalendar({
                header: {
                    left: '',
                    center: '',
                    right: ''
                },
                firstDay: 1,
                minTime: "07:30:00",
                maxTime: "13:30:00",
                defaultView: 'agendaWeek',
                defaultDate: '2016-03-07',
                editable: false,
                eventLimit: true, // allow "more" link when too many events
                events: $NoConf.parseJSON('<%= EventData%>')
            });
        });
    </script>
</asp:Content>

