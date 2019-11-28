<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!--
Material Dashboard - v2.1.1
Copyright 2019 Creative Tim (https://www.creative-tim.com)
Licensed under MIT (https://github.com/creativetimofficial/material-dashboard/blob/master/LICENSE.md)
Coded by Creative Tim
-->
<%
    Employe utilisateur = (Employe) session.getAttribute("utilisateur");
%>
<!doctype html>
<html lang="en">

<head>
    <c:choose>
        <c:when test="${utilisateur != null}">
            <title><%= request.getParameter("nomPage") %> • <%= utilisateur.getPrenom() %> <%= utilisateur.getNom() %>
            </title>
        </c:when>
        <c:otherwise>
            <title><%= request.getParameter("nomPage") %>
            </title>
        </c:otherwise>
    </c:choose>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- Material Kit CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modal.css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/calendrier.css" rel="stylesheet" id="calendrier-css">
    <script src="${pageContext.request.contextPath}/assets/js/calendrier.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/demande.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/demande.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet"
          type="text/css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <style>
        .card-default {
            color: #333;
            background: linear-gradient(#fff, #ebebeb) repeat scroll 0 0 transparent;
            font-weight: 600;
            border-radius: 6px;
        }

    </style>

    <script>
        $(function () {
            $(".date").datepicker({
                autoclose: true,
                todayHighlight: true
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();
            /* className colors
          className: default(transparent), important(red), chill(pink), success(green), info(blue)
          */
            /* initialize the external events
            -----------------------------------------------------------------*/
            $('#external-events div.external-event').each(function () {
                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 999,
                    revert: true,      // will cause the event to go back to its
                    revertDuration: 0  //  original position after the drag
                });
            });


            /* initialize the calendar
            -----------------------------------------------------------------*/
            var calendar = $('#calendar').fullCalendar({
                header: {
                    left: 'title',
                    center: 'agendaDay,agendaWeek,month',
                    right: 'prev,next today'
                },
                editable: true,
                firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
                selectable: true,
                defaultView: 'month',

                axisFormat: 'h:mm',
                columnFormat: {
                    month: 'ddd',    // Mon
                    week: 'ddd d', // Mon 7
                    day: 'dddd M/d',  // Monday 9/7
                    agendaDay: 'dddd d'
                },
                titleFormat: {
                    month: 'MMMM yyyy', // September 2009
                    week: "MMMM yyyy", // September 2009
                    day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
                },
                allDaySlot: false,
                selectHelper: true,
                select: function (start, end, allDay) {
                    var title = prompt('Event Title:');
                    if (title) {
                        calendar.fullCalendar('renderEvent',
                            {
                                title: title,
                                start: start,
                                end: end,
                                allDay: allDay
                            },
                            true // make the event "stick"
                        );
                    }
                    calendar.fullCalendar('unselect');
                },
                droppable: true, // this allows things to be dropped onto the calendar !!!
                drop: function (date, allDay) { // this function is called when something is dropped

                    // retrieve the dropped element's stored Event Object
                    var originalEventObject = $(this).data('eventObject');

                    // we need to copy it, so that multiple events don't have a reference to the same object
                    var copiedEventObject = $.extend({}, originalEventObject);

                    // assign it the date that was reported
                    copiedEventObject.start = date;
                    copiedEventObject.allDay = allDay;

                    // render the event on the calendar
                    // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                    $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                    // is the "remove after drop" checkbox checked?
                    if ($('#drop-remove').is(':checked')) {
                        // if so, remove the element from the "Draggable Events" list
                        $(this).remove();
                    }
                },

                events: [
                    {
                        title: 'Réunion projet',
                        start: new Date(y, m, 1)
                    },

                    {
                        id: 999,
                        title: 'Entretien stagiaires',
                        start: new Date(y, m, d + 4, 16, 0),
                        allDay: false,
                        className: 'info'
                    },
                    {
                        title: 'Déjeuner équipe jawa',
                        start: new Date(y, m, d, 12, 0),
                        end: new Date(y, m, d, 14, 0),
                        allDay: false,
                        className: 'important'
                    },
                ],
            });
        });

    </script>
    <style>
        body {
            text-align: center;
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
            background: url(http://www.digiphotohub.com/wp-content/uploads/2015/09/bigstock-Abstract-Blurred-Background-Of-92820527.jpg);
        }

        #external-events h4 {
            font-size: 16px;
            margin-top: 0;
            padding-top: 1em;
        }

        #external-events p {
            margin: 1.5em 0;
            font-size: 11px;
            color: #666;
        }

        #external-events p input {
            margin: 0;
            vertical-align: middle;
        }

        #calendar {
            /* 		float: right; */
            margin: 0 auto;
            width: 60%;
            background-color: #FFFFFF;
            border-radius: 6px;
            box-shadow: 0 1px 2px #C3C3C3;
            -webkit-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
            -moz-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
            box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
        }
    </style>
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-color="green" data-background-color="white">
        <div class="logo">
            <a href="#" class="simple-text logo-mini">
                <c:if test="${utilisateur != null}">
                    <%= utilisateur.getPrenom() %> <%= utilisateur.getNom() %>
                </c:if>
            </a>
        </div>
        <jsp:include page="Menu.jsp">
            <jsp:param name="role" value="leader"/>
        </jsp:include>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent">
            <div class="container-fluid">
                <div class="navbar-wrapper" style="margin-left: 10px">
                    <h2><%= request.getParameter("nomPage") %>
                    </h2>
                </div>
                <% request.setAttribute("texteModal", request.getParameter("texteModal")); %>
                <jsp:include page="Modal.jsp">
                    <jsp:param name="texte" value="${texteModal}"/>
                </jsp:include>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:history.back()">
                                <i class="material-icons">keyboard_return</i>
                                <p class="d-lg-none d-md-block">
                                    Stats
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content" style="margin-top: 0px;">
            <div class="container-fluid">