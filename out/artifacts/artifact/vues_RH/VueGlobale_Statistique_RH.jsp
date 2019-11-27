<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--
=========================================================
Material Dashboard - v2.1.1
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2019 Creative Tim (https://www.creative-tim.com)
Licensed under MIT (https://github.com/creativetimofficial/material-dashboard/blob/master/LICENSE.md)

Coded by Creative Tim

=========================================================

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/assets/img/apple-icon.png" rel="apple-touch-icon" sizes="76x76">
    <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon" type="image/png">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible"/>
    <title>
        Material Dashboard by Creative Tim
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"
          rel="stylesheet" type="text/css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="${pageContext.request.contextPath}/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${pageContext.request.contextPath}/assets/demo/demo.css" rel="stylesheet"/>
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-background-color="white" data-color="azure" data-image="../assets/img/sidebar-1.jpg">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

          Tip 2: you can also add an image using data-image tag
      -->
        <div class="logo">
            <a class="simple-text logo-normal" href="http://www.creative-tim.com">
                Creative Tim
            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item active  ">
                    <a class="nav-link" href="./dashboard.html">
                        <i class="material-icons">dashboard</i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./user.html">
                        <i class="material-icons">person</i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./tables.html">
                        <i class="material-icons">content_paste</i>
                        <p>Table List</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./typography.html">
                        <i class="material-icons">library_books</i>
                        <p>Typography</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./icons.html">
                        <i class="material-icons">bubble_chart</i>
                        <p>Icons</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./map.html">
                        <i class="material-icons">location_ons</i>
                        <p>Maps</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./notifications.html">
                        <i class="material-icons">notifications</i>
                        <p>Notifications</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="./rtl.html">
                        <i class="material-icons">language</i>
                        <p>RTL Support</p>
                    </a>
                </li>
                <li class="nav-item active-pro ">
                    <a class="nav-link" href="./upgrade.html">
                        <i class="material-icons">unarchive</i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <a class="navbar-brand" href="#pablo">Dashboard</a>
                </div>
                <button aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation"
                        class="navbar-toggler" data-toggle="collapse" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <form class="navbar-form">
                        <div class="input-group no-border">
                            <input class="form-control" placeholder="Search..." type="text" value="">
                            <button class="btn btn-white btn-round btn-just-icon" type="submit">
                                <i class="material-icons">search</i>
                                <div class="ripple-container"></div>
                            </button>
                        </div>
                    </form>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <i class="material-icons">dashboard</i>
                                <p class="d-lg-none d-md-block">
                                    Stats
                                </p>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a aria-expanded="false" aria-haspopup="true" class="nav-link" data-toggle="dropdown"
                               href="http://example.com" id="navbarDropdownMenuLink">
                                <i class="material-icons">notifications</i>
                                <span class="notification">5</span>
                                <p class="d-lg-none d-md-block">
                                    Some Actions
                                </p>
                            </a>
                            <div aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Mike John responded to your email</a>
                                <a class="dropdown-item" href="#">You have 5 new tasks</a>
                                <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                                <a class="dropdown-item" href="#">Another Notification</a>
                                <a class="dropdown-item" href="#">Another One</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a aria-expanded="false" aria-haspopup="true" class="nav-link" data-toggle="dropdown"
                               href="#pablo" id="navbarDropdownProfile">
                                <i class="material-icons">person</i>
                                <p class="d-lg-none d-md-block">
                                    Account
                                </p>
                            </a>
                            <div aria-labelledby="navbarDropdownProfile" class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Profile</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Log out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <!-- CHIFFRES -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-header card-header-warning card-header-icon">
                                <div class="card-icon">
                                    <i class="material-icons">content_copy</i>
                                </div>
                                <p class="card-category">Nombre d'employé</p>
                                <h3 class="card-title">500
<%--                                    <small>employé</small>--%>
                                </h3>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
<%--                                    <i class="material-icons text-danger">warning</i>--%>
<%--                                    <a href="#pablo">Get More Space...</a>--%>
                                    Depuis Aout 2019
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-header card-header-success card-header-icon">
                                <div class="card-icon">
                                    <i class="material-icons">store</i>
                                </div>
                                <p class="card-category">Revenue</p>
                                <h3 class="card-title">$34,245</h3>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">date_range</i> Last 24 Hours
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-header card-header-danger card-header-icon">
                                <div class="card-icon">
                                    <i class="material-icons">info_outline</i>
                                </div>
                                <p class="card-category">Fixed Issues</p>
                                <h3 class="card-title">75</h3>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">local_offer</i> Tracked from Github
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-header card-header-info card-header-icon">
                                <div class="card-icon">
                                    <i class="fa fa-twitter"></i>
                                </div>
                                <p class="card-category">Followers</p>
                                <h3 class="card-title">+245</h3>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">update</i> Just Updated
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIN CHIFFRES -->

                <div class="row">
                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header card-header-success">
                                <div class="ct-chart" id="dailySalesChart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="70.42857142857143" x2="70.42857142857143" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="100.85714285714286" x2="100.85714285714286" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="131.28571428571428" x2="131.28571428571428" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="161.71428571428572" x2="161.71428571428572" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="192.14285714285714" x2="192.14285714285714" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="222.57142857142856" x2="222.57142857142856" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="253" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M40,91.2C70.429,79.2,70.429,79.2,70.429,79.2C100.857,103.2,100.857,103.2,100.857,103.2C131.286,79.2,131.286,79.2,131.286,79.2C161.714,64.8,161.714,64.8,161.714,64.8C192.143,76.8,192.143,76.8,192.143,76.8C222.571,28.8,222.571,28.8,222.571,28.8" class="ct-line"></path><line x1="40" y1="91.2" x2="40.01" y2="91.2" class="ct-point" ct:value="12" opacity="1"></line><line x1="70.42857142857143" y1="79.2" x2="70.43857142857144" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="100.85714285714286" y1="103.2" x2="100.86714285714287" y2="103.2" class="ct-point" ct:value="7" opacity="1"></line><line x1="131.28571428571428" y1="79.2" x2="131.29571428571427" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="161.71428571428572" y1="64.8" x2="161.7242857142857" y2="64.8" class="ct-point" ct:value="23" opacity="1"></line><line x1="192.14285714285714" y1="76.8" x2="192.15285714285713" y2="76.8" class="ct-point" ct:value="18" opacity="1"></line><line x1="222.57142857142856" y1="28.799999999999997" x2="222.58142857142855" y2="28.799999999999997" class="ct-point" ct:value="38" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="30.428571428571427" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="70.42857142857143" y="125" width="30.428571428571427" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="100.85714285714286" y="125" width="30.428571428571423" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">W</span></foreignObject><foreignObject style="overflow: visible;" x="131.28571428571428" y="125" width="30.42857142857143" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="161.71428571428572" y="125" width="30.42857142857143" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="192.14285714285714" y="125" width="30.428571428571416" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="222.57142857142856" y="125" width="30.428571428571445" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">10</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">20</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">30</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">40</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">50</span></foreignObject></g></svg></div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Nombre d'employé en présentiel par semaine </h4>
                                <p class="card-category">
                                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">access_time</i> updated 4 minutes ago
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header card-header-warning">
                                <div class="ct-chart" id="websiteViewsChart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="120" y2="120" x1="40" x2="248" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="248" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="248" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="248" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="248" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="248" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><line x1="48.666666666666664" x2="48.666666666666664" y1="120" y2="54.959999999999994" class="ct-bar" ct:value="542" opacity="1"></line><line x1="66" x2="66" y1="120" y2="66.84" class="ct-bar" ct:value="443" opacity="1"></line><line x1="83.33333333333333" x2="83.33333333333333" y1="120" y2="81.6" class="ct-bar" ct:value="320" opacity="1"></line><line x1="100.66666666666667" x2="100.66666666666667" y1="120" y2="26.400000000000006" class="ct-bar" ct:value="780" opacity="1"></line><line x1="118" x2="118" y1="120" y2="53.64" class="ct-bar" ct:value="553" opacity="1"></line><line x1="135.33333333333331" x2="135.33333333333331" y1="120" y2="65.64" class="ct-bar" ct:value="453" opacity="1"></line><line x1="152.66666666666666" x2="152.66666666666666" y1="120" y2="80.88" class="ct-bar" ct:value="326" opacity="1"></line><line x1="169.99999999999997" x2="169.99999999999997" y1="120" y2="67.92" class="ct-bar" ct:value="434" opacity="1"></line><line x1="187.33333333333331" x2="187.33333333333331" y1="120" y2="51.84" class="ct-bar" ct:value="568" opacity="1"></line><line x1="204.66666666666666" x2="204.66666666666666" y1="120" y2="46.8" class="ct-bar" ct:value="610" opacity="1"></line><line x1="221.99999999999997" x2="221.99999999999997" y1="120" y2="29.28" class="ct-bar" ct:value="756" opacity="1"></line><line x1="239.33333333333331" x2="239.33333333333331" y1="120" y2="12.599999999999994" class="ct-bar" ct:value="895" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="17.333333333333332" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="57.33333333333333" y="125" width="17.333333333333332" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="74.66666666666666" y="125" width="17.333333333333336" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="92" y="125" width="17.33333333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="109.33333333333333" y="125" width="17.33333333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="126.66666666666666" y="125" width="17.333333333333343" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="144" y="125" width="17.33333333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="161.33333333333331" y="125" width="17.33333333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="178.66666666666666" y="125" width="17.333333333333343" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="196" y="125" width="17.333333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">O</span></foreignObject><foreignObject style="overflow: visible;" x="213.33333333333331" y="125" width="17.333333333333343" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 17px; height: 20px;">N</span></foreignObject><foreignObject style="overflow: visible;" x="230.66666666666666" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">D</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg></div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Prévisions des congés à l'année</h4>
                                <p class="card-category">Last Campaign Performance</p>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header card-header-danger">
                                <div class="ct-chart" id="completedTasksChart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="66.625" x2="66.625" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="93.25" x2="93.25" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="119.875" x2="119.875" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="146.5" x2="146.5" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="173.125" x2="173.125" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="199.75" x2="199.75" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="226.375" x2="226.375" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="253" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="253" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M40,92.4C66.625,30,66.625,30,66.625,30C93.25,66,93.25,66,93.25,66C119.875,84,119.875,84,119.875,84C146.5,86.4,146.5,86.4,146.5,86.4C173.125,91.2,173.125,91.2,173.125,91.2C199.75,96,199.75,96,199.75,96C226.375,97.2,226.375,97.2,226.375,97.2" class="ct-line"></path><line x1="40" y1="92.4" x2="40.01" y2="92.4" class="ct-point" ct:value="230" opacity="1"></line><line x1="66.625" y1="30" x2="66.635" y2="30" class="ct-point" ct:value="750" opacity="1"></line><line x1="93.25" y1="66" x2="93.26" y2="66" class="ct-point" ct:value="450" opacity="1"></line><line x1="119.875" y1="84" x2="119.885" y2="84" class="ct-point" ct:value="300" opacity="1"></line><line x1="146.5" y1="86.4" x2="146.51" y2="86.4" class="ct-point" ct:value="280" opacity="1"></line><line x1="173.125" y1="91.2" x2="173.135" y2="91.2" class="ct-point" ct:value="240" opacity="1"></line><line x1="199.75" y1="96" x2="199.76" y2="96" class="ct-point" ct:value="200" opacity="1"></line><line x1="226.375" y1="97.2" x2="226.385" y2="97.2" class="ct-point" ct:value="190" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="66.625" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">3p</span></foreignObject><foreignObject style="overflow: visible;" x="93.25" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">6p</span></foreignObject><foreignObject style="overflow: visible;" x="119.875" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">9p</span></foreignObject><foreignObject style="overflow: visible;" x="146.5" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="173.125" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">3a</span></foreignObject><foreignObject style="overflow: visible;" x="199.75" y="125" width="26.625" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 27px; height: 20px;">6a</span></foreignObject><foreignObject style="overflow: visible;" x="226.375" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">9a</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg></div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Nombre d'employé en congés par semaine</h4>
                                <p class="card-category">Last Campaign Performance</p>
                            </div>
                            <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">

                        <div class="card ">
                            <div class="card-header">
                                <h4 class="card-title">2015 Sales</h4>
                                <p class="category">All products including Taxes</p>
                            </div>
                            <div class="card-content">
                                <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="245px" class="ct-chart-line" style="width: 100%; height: 245px;"><g class="ct-grids"><line y1="210" y2="210" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="182.14285714285714" y2="182.14285714285714" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="154.28571428571428" y2="154.28571428571428" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="126.42857142857143" y2="126.42857142857143" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="98.57142857142857" y2="98.57142857142857" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="70.71428571428572" y2="70.71428571428572" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="42.85714285714286" y2="42.85714285714286" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="15" y2="15" x1="50" x2="439.5" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M50,114.729C60.819,114.636,71.639,114.45,82.458,114.45C93.278,114.45,104.097,120.857,114.917,120.857C125.736,120.857,136.556,76.286,147.375,76.286C158.194,76.286,169.014,83.807,179.833,83.807C190.653,83.807,201.472,55.95,212.292,55.95C223.111,55.95,233.931,174.9,244.75,174.9C255.569,174.9,266.389,155.92,277.208,144.814C288.028,133.708,298.847,113.424,309.667,107.486C320.486,101.547,331.306,101.843,342.125,95.786C352.944,89.728,363.764,68.338,374.583,55.114C385.403,41.89,396.222,29.3,407.042,16.393" class="ct-line"></path><line x1="50" y1="114.72857142857143" x2="50.01" y2="114.72857142857143" class="ct-point" ct:value="542"></line><line x1="82.45833333333334" y1="114.45" x2="82.46833333333335" y2="114.45" class="ct-point" ct:value="543"></line><line x1="114.91666666666667" y1="120.85714285714286" x2="114.92666666666668" y2="120.85714285714286" class="ct-point" ct:value="520"></line><line x1="147.375" y1="76.28571428571428" x2="147.385" y2="76.28571428571428" class="ct-point" ct:value="680"></line><line x1="179.83333333333334" y1="83.80714285714286" x2="179.84333333333333" y2="83.80714285714286" class="ct-point" ct:value="653"></line><line x1="212.29166666666669" y1="55.94999999999999" x2="212.30166666666668" y2="55.94999999999999" class="ct-point" ct:value="753"></line><line x1="244.75" y1="174.9" x2="244.76" y2="174.9" class="ct-point" ct:value="326"></line><line x1="277.20833333333337" y1="144.81428571428572" x2="277.21833333333336" y2="144.81428571428572" class="ct-point" ct:value="434"></line><line x1="309.6666666666667" y1="107.48571428571428" x2="309.6766666666667" y2="107.48571428571428" class="ct-point" ct:value="568"></line><line x1="342.125" y1="95.78571428571429" x2="342.135" y2="95.78571428571429" class="ct-point" ct:value="610"></line><line x1="374.58333333333337" y1="55.11428571428573" x2="374.59333333333336" y2="55.11428571428573" class="ct-point" ct:value="756"></line><line x1="407.0416666666667" y1="16.39285714285714" x2="407.0516666666667" y2="16.39285714285714" class="ct-point" ct:value="895"></line></g><g class="ct-series ct-series-b"><path d="M50,201.643C60.819,195.793,71.639,190.879,82.458,184.093C93.278,177.307,104.097,168.497,114.917,159.857C125.736,151.217,136.556,135.473,147.375,132C158.194,128.527,169.014,128.518,179.833,125.593C190.653,122.667,201.472,116.164,212.292,111.664C223.111,107.165,233.931,103.604,244.75,98.571C255.569,93.539,266.389,84.866,277.208,80.743C288.028,76.619,298.847,72.919,309.667,71.271C320.486,69.624,331.306,69.453,342.125,67.929C352.944,66.404,363.764,64.037,374.583,60.686C385.403,57.334,396.222,49.729,407.042,44.25" class="ct-line"></path><line x1="50" y1="201.64285714285714" x2="50.01" y2="201.64285714285714" class="ct-point" ct:value="230"></line><line x1="82.45833333333334" y1="184.09285714285716" x2="82.46833333333335" y2="184.09285714285716" class="ct-point" ct:value="293"></line><line x1="114.91666666666667" y1="159.85714285714286" x2="114.92666666666668" y2="159.85714285714286" class="ct-point" ct:value="380"></line><line x1="147.375" y1="132" x2="147.385" y2="132" class="ct-point" ct:value="480"></line><line x1="179.83333333333334" y1="125.59285714285714" x2="179.84333333333333" y2="125.59285714285714" class="ct-point" ct:value="503"></line><line x1="212.29166666666669" y1="111.66428571428571" x2="212.30166666666668" y2="111.66428571428571" class="ct-point" ct:value="553"></line><line x1="244.75" y1="98.57142857142857" x2="244.76" y2="98.57142857142857" class="ct-point" ct:value="600"></line><line x1="277.20833333333337" y1="80.74285714285713" x2="277.21833333333336" y2="80.74285714285713" class="ct-point" ct:value="664"></line><line x1="309.6666666666667" y1="71.27142857142857" x2="309.6766666666667" y2="71.27142857142857" class="ct-point" ct:value="698"></line><line x1="342.125" y1="67.92857142857142" x2="342.135" y2="67.92857142857142" class="ct-point" ct:value="710"></line><line x1="374.58333333333337" y1="60.68571428571428" x2="374.59333333333336" y2="60.68571428571428" class="ct-point" ct:value="736"></line><line x1="407.0416666666667" y1="44.25" x2="407.0516666666667" y2="44.25" class="ct-point" ct:value="795"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="50" y="215" width="32.458333333333336" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jan</span></foreignObject><foreignObject style="overflow: visible;" x="82.45833333333334" y="215" width="32.458333333333336" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Feb</span></foreignObject><foreignObject style="overflow: visible;" x="114.91666666666667" y="215" width="32.45833333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Mar</span></foreignObject><foreignObject style="overflow: visible;" x="147.375" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Apr</span></foreignObject><foreignObject style="overflow: visible;" x="179.83333333333334" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Mai</span></foreignObject><foreignObject style="overflow: visible;" x="212.29166666666669" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jun</span></foreignObject><foreignObject style="overflow: visible;" x="244.75" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jul</span></foreignObject><foreignObject style="overflow: visible;" x="277.20833333333337" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Aug</span></foreignObject><foreignObject style="overflow: visible;" x="309.6666666666667" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Sep</span></foreignObject><foreignObject style="overflow: visible;" x="342.125" y="215" width="32.45833333333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Oct</span></foreignObject><foreignObject style="overflow: visible;" x="374.58333333333337" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Nov</span></foreignObject><foreignObject style="overflow: visible;" x="407.0416666666667" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Dec</span></foreignObject><foreignObject style="overflow: visible;" y="182.14285714285714" x="10" height="27.857142857142858" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="154.28571428571428" x="10" height="27.857142857142858" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">300</span></foreignObject><foreignObject style="overflow: visible;" y="126.42857142857142" x="10" height="27.857142857142854" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="98.57142857142857" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">500</span></foreignObject><foreignObject style="overflow: visible;" y="70.71428571428572" x="10" height="27.857142857142847" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="42.85714285714286" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">700</span></foreignObject><foreignObject style="overflow: visible;" y="15" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-15" x="10" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">900</span></foreignObject></g></svg><div id="chartActivity" class="ct-chart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="245px" class="ct-chart-line" style="width: 100%; height: 245px;"><g class="ct-grids"><line y1="210" y2="210" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="182.14285714285714" y2="182.14285714285714" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="154.28571428571428" y2="154.28571428571428" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="126.42857142857143" y2="126.42857142857143" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="98.57142857142857" y2="98.57142857142857" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="70.71428571428572" y2="70.71428571428572" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="42.85714285714286" y2="42.85714285714286" x1="50" x2="439.5" class="ct-grid ct-vertical"></line><line y1="15" y2="15" x1="50" x2="439.5" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M50,114.729C60.819,114.636,71.639,114.45,82.458,114.45C93.278,114.45,104.097,120.857,114.917,120.857C125.736,120.857,136.556,76.286,147.375,76.286C158.194,76.286,169.014,83.807,179.833,83.807C190.653,83.807,201.472,55.95,212.292,55.95C223.111,55.95,233.931,174.9,244.75,174.9C255.569,174.9,266.389,155.92,277.208,144.814C288.028,133.708,298.847,113.424,309.667,107.486C320.486,101.547,331.306,101.843,342.125,95.786C352.944,89.728,363.764,68.338,374.583,55.114C385.403,41.89,396.222,29.3,407.042,16.393" class="ct-line"></path><line x1="50" y1="114.72857142857143" x2="50.01" y2="114.72857142857143" class="ct-point" ct:value="542"></line><line x1="82.45833333333334" y1="114.45" x2="82.46833333333335" y2="114.45" class="ct-point" ct:value="543"></line><line x1="114.91666666666667" y1="120.85714285714286" x2="114.92666666666668" y2="120.85714285714286" class="ct-point" ct:value="520"></line><line x1="147.375" y1="76.28571428571428" x2="147.385" y2="76.28571428571428" class="ct-point" ct:value="680"></line><line x1="179.83333333333334" y1="83.80714285714286" x2="179.84333333333333" y2="83.80714285714286" class="ct-point" ct:value="653"></line><line x1="212.29166666666669" y1="55.94999999999999" x2="212.30166666666668" y2="55.94999999999999" class="ct-point" ct:value="753"></line><line x1="244.75" y1="174.9" x2="244.76" y2="174.9" class="ct-point" ct:value="326"></line><line x1="277.20833333333337" y1="144.81428571428572" x2="277.21833333333336" y2="144.81428571428572" class="ct-point" ct:value="434"></line><line x1="309.6666666666667" y1="107.48571428571428" x2="309.6766666666667" y2="107.48571428571428" class="ct-point" ct:value="568"></line><line x1="342.125" y1="95.78571428571429" x2="342.135" y2="95.78571428571429" class="ct-point" ct:value="610"></line><line x1="374.58333333333337" y1="55.11428571428573" x2="374.59333333333336" y2="55.11428571428573" class="ct-point" ct:value="756"></line><line x1="407.0416666666667" y1="16.39285714285714" x2="407.0516666666667" y2="16.39285714285714" class="ct-point" ct:value="895"></line></g><g class="ct-series ct-series-b"><path d="M50,201.643C60.819,195.793,71.639,190.879,82.458,184.093C93.278,177.307,104.097,168.497,114.917,159.857C125.736,151.217,136.556,135.473,147.375,132C158.194,128.527,169.014,128.518,179.833,125.593C190.653,122.667,201.472,116.164,212.292,111.664C223.111,107.165,233.931,103.604,244.75,98.571C255.569,93.539,266.389,84.866,277.208,80.743C288.028,76.619,298.847,72.919,309.667,71.271C320.486,69.624,331.306,69.453,342.125,67.929C352.944,66.404,363.764,64.037,374.583,60.686C385.403,57.334,396.222,49.729,407.042,44.25" class="ct-line"></path><line x1="50" y1="201.64285714285714" x2="50.01" y2="201.64285714285714" class="ct-point" ct:value="230"></line><line x1="82.45833333333334" y1="184.09285714285716" x2="82.46833333333335" y2="184.09285714285716" class="ct-point" ct:value="293"></line><line x1="114.91666666666667" y1="159.85714285714286" x2="114.92666666666668" y2="159.85714285714286" class="ct-point" ct:value="380"></line><line x1="147.375" y1="132" x2="147.385" y2="132" class="ct-point" ct:value="480"></line><line x1="179.83333333333334" y1="125.59285714285714" x2="179.84333333333333" y2="125.59285714285714" class="ct-point" ct:value="503"></line><line x1="212.29166666666669" y1="111.66428571428571" x2="212.30166666666668" y2="111.66428571428571" class="ct-point" ct:value="553"></line><line x1="244.75" y1="98.57142857142857" x2="244.76" y2="98.57142857142857" class="ct-point" ct:value="600"></line><line x1="277.20833333333337" y1="80.74285714285713" x2="277.21833333333336" y2="80.74285714285713" class="ct-point" ct:value="664"></line><line x1="309.6666666666667" y1="71.27142857142857" x2="309.6766666666667" y2="71.27142857142857" class="ct-point" ct:value="698"></line><line x1="342.125" y1="67.92857142857142" x2="342.135" y2="67.92857142857142" class="ct-point" ct:value="710"></line><line x1="374.58333333333337" y1="60.68571428571428" x2="374.59333333333336" y2="60.68571428571428" class="ct-point" ct:value="736"></line><line x1="407.0416666666667" y1="44.25" x2="407.0516666666667" y2="44.25" class="ct-point" ct:value="795"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="50" y="215" width="32.458333333333336" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jan</span></foreignObject><foreignObject style="overflow: visible;" x="82.45833333333334" y="215" width="32.458333333333336" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Feb</span></foreignObject><foreignObject style="overflow: visible;" x="114.91666666666667" y="215" width="32.45833333333333" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Mar</span></foreignObject><foreignObject style="overflow: visible;" x="147.375" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Apr</span></foreignObject><foreignObject style="overflow: visible;" x="179.83333333333334" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Mai</span></foreignObject><foreignObject style="overflow: visible;" x="212.29166666666669" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jun</span></foreignObject><foreignObject style="overflow: visible;" x="244.75" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Jul</span></foreignObject><foreignObject style="overflow: visible;" x="277.20833333333337" y="215" width="32.45833333333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Aug</span></foreignObject><foreignObject style="overflow: visible;" x="309.6666666666667" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Sep</span></foreignObject><foreignObject style="overflow: visible;" x="342.125" y="215" width="32.45833333333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Oct</span></foreignObject><foreignObject style="overflow: visible;" x="374.58333333333337" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Nov</span></foreignObject><foreignObject style="overflow: visible;" x="407.0416666666667" y="215" width="32.458333333333314" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 32px; height: 20px;">Dec</span></foreignObject><foreignObject style="overflow: visible;" y="182.14285714285714" x="10" height="27.857142857142858" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="154.28571428571428" x="10" height="27.857142857142858" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">300</span></foreignObject><foreignObject style="overflow: visible;" y="126.42857142857142" x="10" height="27.857142857142854" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="98.57142857142857" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">500</span></foreignObject><foreignObject style="overflow: visible;" y="70.71428571428572" x="10" height="27.857142857142847" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="42.85714285714286" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">700</span></foreignObject><foreignObject style="overflow: visible;" y="15" x="10" height="27.85714285714286" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 28px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-15" x="10" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">900</span></foreignObject></g></svg></div>
                            </div>
                            <div class="card-footer">
                                <div class="chart-legend">
                                    <i class="fa fa-circle text-info"></i> Tesla Model S
                                    <i class="fa fa-circle text-warning"></i> BMW 5 Series
                                </div>
                                <hr>
                                <div class="stats">
                                    <i class="ti-check"></i> Data information certified
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Users Behavior</h4>
                            <p class="category">24 Hours performance</p>
                        </div>
                        <div class="content">
                            <div id="chartHours" class="ct-chart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="245px" class="ct-chart-line" style="width: 100%; height: 245px;"><g class="ct-grids"><line y1="210" y2="210" x1="50" x2="469.5" class="ct-grid ct-vertical"></line><line y1="171" y2="171" x1="50" x2="469.5" class="ct-grid ct-vertical"></line><line y1="132" y2="132" x1="50" x2="469.5" class="ct-grid ct-vertical"></line><line y1="93" y2="93" x1="50" x2="469.5" class="ct-grid ct-vertical"></line><line y1="54" y2="54" x1="50" x2="469.5" class="ct-grid ct-vertical"></line><line y1="15" y2="15" x1="50" x2="469.5" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M50,210L50,154.035C65.537,154.035,81.074,134.925,96.611,134.925C112.148,134.925,127.685,114.45,143.222,114.45C158.759,114.45,174.296,100.41,189.833,100.41C205.37,100.41,220.907,94.17,236.444,94.17C251.981,94.17,267.519,87.93,283.056,87.93C298.593,87.93,314.13,73.89,329.667,73.89C345.204,73.89,360.741,35.475,376.278,35.475C391.815,35.475,407.352,24.36,422.889,24.36L422.889,210Z" class="ct-area"></path><path d="M50,154.035C65.537,154.035,81.074,134.925,96.611,134.925C112.148,134.925,127.685,114.45,143.222,114.45C158.759,114.45,174.296,100.41,189.833,100.41C205.37,100.41,220.907,94.17,236.444,94.17C251.981,94.17,267.519,87.93,283.056,87.93C298.593,87.93,314.13,73.89,329.667,73.89C345.204,73.89,360.741,35.475,376.278,35.475C391.815,35.475,407.352,24.36,422.889,24.36" class="ct-line"></path></g><g class="ct-series ct-series-b"><path d="M50,210L50,196.935C65.537,196.935,81.074,180.36,96.611,180.36C112.148,180.36,127.685,172.365,143.222,172.365C158.759,172.365,174.296,163.2,189.833,163.2C205.37,163.2,220.907,134.535,236.444,134.535C251.981,134.535,267.519,125.175,283.056,125.175C298.593,125.175,314.13,105.675,329.667,105.675C345.204,105.675,360.741,84.81,376.278,84.81C391.815,84.81,407.352,64.92,422.889,64.92L422.889,210Z" class="ct-area"></path><path d="M50,196.935C65.537,196.935,81.074,180.36,96.611,180.36C112.148,180.36,127.685,172.365,143.222,172.365C158.759,172.365,174.296,163.2,189.833,163.2C205.37,163.2,220.907,134.535,236.444,134.535C251.981,134.535,267.519,125.175,283.056,125.175C298.593,125.175,314.13,105.675,329.667,105.675C345.204,105.675,360.741,84.81,376.278,84.81C391.815,84.81,407.352,64.92,422.889,64.92" class="ct-line"></path></g><g class="ct-series ct-series-c"><path d="M50,210L50,205.515C65.537,205.515,81.074,187.965,96.611,187.965C112.148,187.965,127.685,196.935,143.222,196.935C158.759,196.935,174.296,188.94,189.833,188.94C205.37,188.94,220.907,172.95,236.444,172.95C251.981,172.95,267.519,163.395,283.056,163.395C298.593,163.395,314.13,150.135,329.667,150.135C345.204,150.135,360.741,130.05,376.278,130.05C391.815,130.05,407.352,130.05,422.889,130.05L422.889,210Z" class="ct-area"></path><path d="M50,205.515C65.537,205.515,81.074,187.965,96.611,187.965C112.148,187.965,127.685,196.935,143.222,196.935C158.759,196.935,174.296,188.94,189.833,188.94C205.37,188.94,220.907,172.95,236.444,172.95C251.981,172.95,267.519,163.395,283.056,163.395C298.593,163.395,314.13,150.135,329.667,150.135C345.204,150.135,360.741,130.05,376.278,130.05C391.815,130.05,407.352,130.05,422.889,130.05" class="ct-line"></path></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="50" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">9:00AM</span></foreignObject><foreignObject style="overflow: visible;" x="96.61111111111111" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">12:00AM</span></foreignObject><foreignObject style="overflow: visible;" x="143.22222222222223" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">3:00PM</span></foreignObject><foreignObject style="overflow: visible;" x="189.83333333333334" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">6:00PM</span></foreignObject><foreignObject style="overflow: visible;" x="236.44444444444446" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">9:00PM</span></foreignObject><foreignObject style="overflow: visible;" x="283.05555555555554" y="215" width="46.611111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">12:00PM</span></foreignObject><foreignObject style="overflow: visible;" x="329.6666666666667" y="215" width="46.61111111111114" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">3:00AM</span></foreignObject><foreignObject style="overflow: visible;" x="376.2777777777778" y="215" width="46.611111111111086" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;">6:00AM</span></foreignObject><foreignObject style="overflow: visible;" x="422.8888888888889" y="215" width="46.611111111111086" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 47px; height: 20px;"></span></foreignObject><foreignObject style="overflow: visible;" y="171" x="10" height="39" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 39px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="132" x="10" height="39" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 39px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="93" x="10" height="39" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 39px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="54" x="10" height="39" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 39px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="15" x="10" height="39" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 39px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-15" x="10" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg></div>
                        </div>
                        <div class="card-footer">
                            <div class="chart-legend">
                                <i class="fa fa-circle text-info"></i> Open
                                <i class="fa fa-circle text-danger"></i> Click
                                <i class="fa fa-circle text-warning"></i> Click Second Time
                            </div>
                            <hr>
                            <div class="stats">
                                <i class="ti-reload"></i> Updated 3 minutes ago
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-header card-header-warning">
                                <h4 class="card-title">Employees Stats</h4>
                                <p class="card-category">New employees on 15th September, 2016</p>
                            </div>
                            <div class="card-body table-responsive">
                                <table class="table table-hover">
                                    <thead class="text-warning">
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Salary</th>
                                    <th>Country</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Dakota Rice</td>
                                        <td>$36,738</td>
                                        <td>Niger</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Minerva Hooper</td>
                                        <td>$23,789</td>
                                        <td>Curaçao</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Sage Rodriguez</td>
                                        <td>$56,142</td>
                                        <td>Netherlands</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Philip Chaney</td>
                                        <td>$38,735</td>
                                        <td>Korea, South</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="float-left">
                    <ul>
                        <li>
                            <a href="https://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="https://creative-tim.com/presentation">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="https://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright float-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    , made with <i class="material-icons">favorite</i> by
                    <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
                </div>
            </div>
        </footer>
    </div>
</div>
<div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a data-toggle="dropdown" href="#">
            <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title"> Sidebar Filters</li>
            <li class="adjustments-line">
                <a class="switch-trigger active-color" href="javascript:void(0)">
                    <div class="badge-colors ml-auto mr-auto">
                        <span class="badge filter badge-purple" data-color="purple"></span>
                        <span class="badge filter badge-azure" data-color="azure"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-warning" data-color="orange"></span>
                        <span class="badge filter badge-danger" data-color="danger"></span>
                        <span class="badge filter badge-rose active" data-color="rose"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Images</li>
            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img alt="" src="../assets/img/sidebar-1.jpg">
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img alt="" src="../assets/img/sidebar-2.jpg">
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img alt="" src="../assets/img/sidebar-3.jpg">
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img alt="" src="../assets/img/sidebar-4.jpg">
                </a>
            </li>
            <li class="button-container">
                <a class="btn btn-primary btn-block" href="https://www.creative-tim.com/product/material-dashboard"
                   target="_blank">Free Download</a>
            </li>
            <!-- <li class="header-title">Want more components?</li>
                <li class="button-container">
                    <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                      Get the pro version
                    </a>
                </li> -->
            <li class="button-container">
                <a class="btn btn-default btn-block"
                   href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html"
                   target="_blank">
                    View Documentation
                </a>
            </li>
            <li class="button-container github-star">
                <a aria-label="Star ntkme/github-buttons on GitHub" class="github-button" data-icon="octicon-star"
                   data-show-count="true" data-size="large"
                   href="https://github.com/creativetimofficial/material-dashboard">Star</a>
            </li>
            <li class="header-title">Thank you for 95 shares!</li>
            <li class="button-container text-center">
                <button class="btn btn-round btn-twitter" id="twitter"><i class="fa fa-twitter"></i> &middot; 45
                </button>
                <button class="btn btn-round btn-facebook" id="facebook"><i class="fa fa-facebook-f"></i> &middot; 50
                </button>
                <br>
                <br>
            </li>
        </ul>
    </div>
</div>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.min.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap-material-design.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Plugin for the momentJs  -->
<script src="../assets/js/plugins/moment.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script src="../assets/js/plugins/sweetalert2.js"></script>
<!-- Forms Validations Plugin -->
<script src="../assets/js/plugins/jquery.validate.min.js"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="../assets/js/plugins/fullcalendar.min.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="../assets/js/plugins/jquery-jvectormap.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="../assets/js/plugins/arrive.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chartist JS -->
<script src="../assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/demo/demo.js"></script>
<script>
    $(document).ready(function () {
        $().ready(function () {
            $sidebar = $('.sidebar');

            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                    $('.fixed-plugin .dropdown').addClass('open');
                }

            }

            $('.fixed-plugin a').click(function (event) {
                // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .active-color span').click(function () {
                $full_page_background = $('.full-page-background');

                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-color', new_color);
                }
            });

            $('.fixed-plugin .background-color .badge').click(function () {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('background-color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-background-color', new_color);
                }
            });

            $('.fixed-plugin .img-holder').click(function () {
                $full_page_background = $('.full-page-background');

                $(this).parent('li').siblings().removeClass('active');
                $(this).parent('li').addClass('active');


                var new_image = $(this).find("img").attr('src');

                if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    $sidebar_img_container.fadeOut('fast', function () {
                        $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                        $sidebar_img_container.fadeIn('fast');
                    });
                }

                if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $full_page_background.fadeOut('fast', function () {
                        $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        $full_page_background.fadeIn('fast');
                    });
                }

                if ($('.switch-sidebar-image input:checked').length == 0) {
                    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                }
            });

            $('.switch-sidebar-image input').change(function () {
                $full_page_background = $('.full-page-background');

                $input = $(this);

                if ($input.is(':checked')) {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar_img_container.fadeIn('fast');
                        $sidebar.attr('data-image', '#');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page_background.fadeIn('fast');
                        $full_page.attr('data-image', '#');
                    }

                    background_image = true;
                } else {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar.removeAttr('data-image');
                        $sidebar_img_container.fadeOut('fast');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page.removeAttr('data-image', '#');
                        $full_page_background.fadeOut('fast');
                    }

                    background_image = false;
                }
            });

            $('.switch-sidebar-mini input').change(function () {
                $body = $('body');

                $input = $(this);

                if (md.misc.sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    md.misc.sidebar_mini_active = false;

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                } else {

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                    setTimeout(function () {
                        $('body').addClass('sidebar-mini');

                        md.misc.sidebar_mini_active = true;
                    }, 300);
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function () {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function () {
                    clearInterval(simulateWindowResize);
                }, 1000);

            });
        });
    });
</script>
<script>
    $(document).ready(function () {
        // Javascript method's body can be found in assets/js/demos.js
        md.initDashboardPageCharts();

    });
</script>
</body>

</html>
