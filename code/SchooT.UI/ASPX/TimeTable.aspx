<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="TimeTable.aspx.cs" Inherits="ASPX_TimeTable" %>

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

    Select Teacher: 
    <asp:DropDownList ID="TeacherDropdown" runat="server" AutoPostBack="true">
        <asp:ListItem Text="Sangita mane" Value="1"></asp:ListItem>
        <asp:ListItem Text="Aparna lele" Value="2"></asp:ListItem>
        <asp:ListItem Text="Netra tamhane" Value="3"></asp:ListItem>
        <asp:ListItem Text="Ashwini thosar" Value="4"></asp:ListItem>
        <asp:ListItem Text="Naznin panesar" Value="5"></asp:ListItem>
        <asp:ListItem Text="Seema welankar" Value="6"></asp:ListItem>
        <asp:ListItem Text="Naomi rajendran" Value="7"></asp:ListItem>
        <asp:ListItem Text="Manjushree yeolekar" Value="8"></asp:ListItem>
        <asp:ListItem Text="Sunita Swami" Value="9"></asp:ListItem>
        <asp:ListItem Text="Sneha Siddhapathki" Value="10"></asp:ListItem>
        <asp:ListItem Text="Anjali Kulkarni" Value="11"></asp:ListItem>
    </asp:DropDownList>

    <div id='calendar'></div>


    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/fullcalendar.min.js"></script>

    <script>
        var $NoConf = jQuery.noConflict();
        $NoConf(document).ready(function () {

            $NoConf('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'agendaDay,agendaWeek'
                },
                firstDay: 1,
                minTime: "07:30:00",
                maxTime: "13:30:00",
                defaultView: 'agendaWeek',
                defaultDate: '2016-02-22',
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: [
				{   // Monday
				    title: 'Prayer',
				    start: '2016-02-22T07:30:00',
				    end: '2016-02-22T07:45:00'
				},
				{
				    title: 'Maths-Ashwini thosar',
				    start: '2016-02-22T07:45:00',
				    end: '2016-02-22T08:15:00'
				},
				{
				    title: 'Hindi-Netra tamhane',
				    start: '2016-02-22T08:15:00',
				    end: '2016-02-22T08:45:00'
				},
				{
				    title: 'Science-Seema welankar',
				    start: '2016-02-22T08:45:00',
				    end: '2016-02-22T09:45:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-22T09:45:00',
                    end: '2016-02-22T10:05:00'
                },
				{
				    title: 'English - Sangita mane',
				    start: '2016-02-22T10:05:00',
				    end: '2016-02-22T11:05:00'
				},
				{
				    title: 'Science Lab-Seema welankar',
				    start: '2016-02-22T11:05:00',
				    end: '2016-02-22T11:35:00'
				},
				{
				    title: 'English/Maths Lab-Sangita mane',
				    start: '2016-02-22T11:35:00',
				    end: '2016-02-22T12:05:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-22T12:05:00',
                    end: '2016-02-22T12:20:00'
                },
                {
                    title: 'Marathi-Aparna lele',
                    start: '2016-02-22T12:20:00',
                    end: '2016-02-22T12:50:00'
                },
                {
                    title: 'Activity-Sunita Swami',
                    start: '2016-02-22T12:50:00',
                    end: '2016-02-22T13:20:00'
                },
				{
				    title: 'Prayer',
				    start: '2016-02-22T13:20:00',
				    end: '2016-02-22T13:30:00'
				},


                {   // Tuesday
                    title: 'Prayer',
                    start: '2016-02-23T07:30:00',
                    end: '2016-02-23T07:45:00'
                },
				{
				    title: 'Maths-Ashwini thosar',
				    start: '2016-02-23T07:45:00',
				    end: '2016-02-23T08:15:00'
				},
				{
				    title: 'Geography - Sangita mane',
				    start: '2016-02-23T08:15:00',
				    end: '2016-02-23T08:45:00'
				},
				{
				    title: 'Hindi-Netra tamhane',
				    start: '2016-02-23T08:45:00',
				    end: '2016-02-23T09:15:00'
				},
				{
				    title: 'P.E.-Sunita Swami',
				    start: '2016-02-23T09:15:00',
				    end: '2016-02-23T09:45:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-23T09:45:00',
                    end: '2016-02-23T10:05:00'
                },
				{
				    title: 'Marathi-Aparna lele',
				    start: '2016-02-23T10:05:00',
				    end: '2016-02-23T10:35:00'
				},
                {
                    title: 'Library',
                    start: '2016-02-23T10:35:00',
                    end: '2016-02-23T11:05:00'
                },
				{
				    title: 'History-Naomi rajendran',
				    start: '2016-02-23T11:05:00',
				    end: '2016-02-23T11:35:00'
				},
				{
				    title: 'English-Sangita mane',
				    start: '2016-02-23T11:35:00',
				    end: '2016-02-23T12:05:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-23T12:05:00',
                    end: '2016-02-23T12:20:00'
                },
				{
				    title: 'Maths-Ashwini thosar',
				    start: '2016-02-23T12:20:00',
				    end: '2016-02-23T12:50:00'
				},
                {
                    title: 'Science-Seema welankar',
                    start: '2016-02-23T12:50:00',
                    end: '2016-02-23T13:20:00'
                },
				{
				    title: 'Prayer',
				    start: '2016-02-23T13:20:00',
				    end: '2016-02-23T13:30:00'
				},


                 {   // Wed
                     title: 'Prayer',
                     start: '2016-02-24T07:30:00',
                     end: '2016-02-24T07:45:00'
                 },
				{
				    title: 'Maths-Ashwini thosar',
				    start: '2016-02-24T07:45:00',
				    end: '2016-02-24T08:15:00'
				},
				{
				    title: 'Marathi-Aparna lele',
				    start: '2016-02-24T08:15:00',
				    end: '2016-02-24T08:45:00'
				},
				{
				    title: 'Hindi-Netra tamhane',
				    start: '2016-02-24T08:45:00',
				    end: '2016-02-24T09:15:00'
				},
				{
				    title: 'English/Maths Lab-Sangita mane',
				    start: '2016-02-24T09:15:00',
				    end: '2016-02-24T09:45:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-24T09:45:00',
                    end: '2016-02-24T10:05:00'
                },
				{
				    title: 'History-Naomi rajendran',
				    start: '2016-02-24T10:05:00',
				    end: '2016-02-24T10:35:00'
				},
                {
                    title: 'English-Sangita mane',
                    start: '2016-02-24T10:35:00',
                    end: '2016-02-24T11:05:00'
                },
				{
				    title: 'P.E.-Sunita Swami',
				    start: '2016-02-24T11:05:00',
				    end: '2016-02-24T11:35:00'
				},
				{
				    title: 'Science-Seema welankar',
				    start: '2016-02-24T11:35:00',
				    end: '2016-02-24T12:05:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-24T12:05:00',
                    end: '2016-02-24T12:20:00'
                },
				{
				    title: 'Drawing-Sneha Siddhapathki',
				    start: '2016-02-24T12:20:00',
				    end: '2016-02-24T13:20:00'
				},
				{
				    title: 'Prayer',
				    start: '2016-02-24T13:20:00',
				    end: '2016-02-24T13:30:00'
				},


                {   // Thus
                    title: 'Prayer',
                    start: '2016-02-25T07:30:00',
                    end: '2016-02-25T07:45:00'
                },
				{
				    title: 'Yoga-Sunita Swami',
				    start: '2016-02-25T07:45:00',
				    end: '2016-02-25T08:15:00'
				},
				{
				    title: 'English-Sangita mane',
				    start: '2016-02-25T08:15:00',
				    end: '2016-02-25T08:45:00'
				},
				{
				    title: 'Science-Seema welankar',
				    start: '2016-02-25T08:45:00',
				    end: '2016-02-25T09:15:00'
				},
				{
				    title: 'Marathi-Aparna lele',
				    start: '2016-02-25T09:15:00',
				    end: '2016-02-25T09:45:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-25T09:45:00',
                    end: '2016-02-25T10:05:00'
                },
				{
				    title: 'Geography-Sangita mane',
				    start: '2016-02-25T10:05:00',
				    end: '2016-02-25T10:35:00'
				},
                {
                    title: 'Maths-Ashwini thosar',
                    start: '2016-02-25T10:35:00',
                    end: '2016-02-25T11:05:00'
                },
				{
				    title: 'Computer-Anjali Kulkarni',
				    start: '2016-02-25T11:05:00',
				    end: '2016-02-25T12:05:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-25T12:05:00',
                    end: '2016-02-25T12:20:00'
                },
				{
				    title: 'English-Sangita mane',
				    start: '2016-02-25T12:20:00',
				    end: '2016-02-25T12:50:00'
				},
                {
                    title: 'Music-Aparna lele',
                    start: '2016-02-25T12:50:00',
                    end: '2016-02-25T13:20:00'
                },
				{
				    title: 'Prayer',
				    start: '2016-02-25T13:20:00',
				    end: '2016-02-25T13:30:00'
				},


                {   // Fri
                    title: 'Prayer',
                    start: '2016-02-26T07:30:00',
                    end: '2016-02-26T07:45:00'
                },
				{
				    title: 'Maths-Ashwini thosar',
				    start: '2016-02-26T07:45:00',
				    end: '2016-02-26T08:45:00'
				},
				{
				    title: 'English-Sangita mane',
				    start: '2016-02-26T08:45:00',
				    end: '2016-02-26T09:15:00'
				},
				{
				    title: 'G.K.-Manjushree yeolekar',
				    start: '2016-02-26T09:15:00',
				    end: '2016-02-26T09:45:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-26T09:45:00',
                    end: '2016-02-26T10:05:00'
                },
				{
				    title: 'History-Naomi rajendran',
				    start: '2016-02-26T10:05:00',
				    end: '2016-02-26T10:35:00'
				},
                {
                    title: 'Science-Seema welankar',
                    start: '2016-02-26T10:35:00',
                    end: '2016-02-26T11:35:00'
                },
				{
				    title: 'Geography-Sangita mane',
				    start: '2016-02-26T11:35:00',
				    end: '2016-02-26T12:05:00'
				},
                {
                    title: 'Break',
                    start: '2016-02-26T12:05:00',
                    end: '2016-02-26T12:20:00'
                },
				{
				    title: 'Craft-Sneha Siddhapathki',
				    start: '2016-02-26T12:20:00',
				    end: '2016-02-26T12:50:00'
				},
                {
                    title: 'Hindi-Netra tamhane',
                    start: '2016-02-26T12:50:00',
                    end: '2016-02-26T13:20:00'
                },
				{
				    title: 'Prayer',
				    start: '2016-02-26T13:20:00',
				    end: '2016-02-26T13:30:00'
				},
                ]
            });
        });

    </script>

</asp:Content>

