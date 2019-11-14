<%@page contentType="text/html;charset=UTF-8" language="java"%>
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
    <link href="../assets/img/apple-icon.png" rel="apple-touch-icon" sizes="76x76">
    <link href="../assets/img/favicon.png" rel="icon" type="image/png">
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
    <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet"/>
</head>

<body class="">
<p>Vous êtes connecté(e) avec l'adresse ${sessionScope.sessionUtilisateur.email}, vous avez bien accès à l'espace restreint.</p>

<div class="wrapper ">
    <div class="sidebar" data-background-color="white" data-color="purple" data-image="../assets/img/sidebar-1.jpg">
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
                <li class="nav-item  ">
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
                <li class="nav-item active ">
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
                    <a class="navbar-brand" href="#pablo">Notifications</a>
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
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h3 class="card-title">Notifications</h3>
                        <p class="card-category">Handcrafted by our friend
                            <a href="https://github.com/mouse0270" target="_blank">Robert McIntosh</a>. Please checkout
                            the
                            <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full
                                documentation.</a>
                        </p>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="card-title">Notifications Style</h4>
                                <div class="alert alert-info">
                                    <span>This is a plain notification</span>
                                </div>
                                <div class="alert alert-info">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>This is a notification with close button.</span>
                                </div>
                                <div class="alert alert-info alert-with-icon" data-notify="container">
                                    <i class="material-icons" data-notify="icon">add_alert</i>
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span data-notify="message">This is a notification with close button and icon.</span>
                                </div>
                                <div class="alert alert-info alert-with-icon" data-notify="container">
                                    <i class="material-icons" data-notify="icon">add_alert</i>
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span data-notify="message">This is a notification with close button and icon and have many lines. You can see that the icon and the close button are always vertically aligned. This is a beautiful notification. So you don't have to worry about the style.</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h4 class="card-title">Notification states</h4>
                                <div class="alert alert-info">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>
                      <b> Info - </b> This is a regular notification made with ".alert-info"</span>
                                </div>
                                <div class="alert alert-success">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>
                      <b> Success - </b> This is a regular notification made with ".alert-success"</span>
                                </div>
                                <div class="alert alert-warning">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>
                      <b> Warning - </b> This is a regular notification made with ".alert-warning"</span>
                                </div>
                                <div class="alert alert-danger">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>
                      <b> Danger - </b> This is a regular notification made with ".alert-danger"</span>
                                </div>
                                <div class="alert alert-primary">
                                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>
                      <b> Primary - </b> This is a regular notification made with ".alert-primary"</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="places-buttons">
                            <div class="row">
                                <div class="col-md-6 ml-auto mr-auto text-center">
                                    <h4 class="card-title">
                                        Notifications Places
                                        <p class="category">Click to view notifications</p>
                                    </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-10 ml-auto mr-auto">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('top','left')">Top Left
                                            </button>
                                        </div>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('top','center')">Top Center
                                            </button>
                                        </div>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('top','right')">Top Right
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-10 ml-auto mr-auto">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('bottom','left')">Bottom Left
                                            </button>
                                        </div>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('bottom','center')">Bottom Center
                                            </button>
                                        </div>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-block"
                                                    onclick="md.showNotification('bottom','right')">Bottom Right
                                            </button>
                                        </div>
                                    </div>
                                </div>
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
        //init DateTimePickers
        md.initFormExtendedDatetimepickers();
    });
</script>
</body>

</html>

