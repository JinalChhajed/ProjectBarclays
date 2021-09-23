<!DOCTYPE html>
<html lang="en">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home Page</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet" href="static/css/all.min.css">
<!-- Ionicons -->
<!--   <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->

<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<!-- SweetAlert2 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js">
<!-- Toastr -->
<link rel="stylesheet" href="static/css/toastr.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="static/css/adminlte.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<!-- Google Font: Source Sans Pro -->
<link
href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/icons/tryit.asp?filename=trybs_ref_glyph_user" >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>

<style>
@keyframes swing {
  0% {
    transform: rotate(0deg);
  }
  10% {
    transform: rotate(10deg);
  }
  30% {
    transform: rotate(0deg);
  }
  40% {
    transform: rotate(-10deg);
  }
  50% {
    transform: rotate(0deg);
  }
  60% {
    transform: rotate(5deg);
  }
  70% {
    transform: rotate(0deg);
  }
  80% {
    transform: rotate(-5deg);
  }
  100% {
    transform: rotate(0deg);
  }
}

@keyframes sonar {
  0% {
    transform: scale(0.9);
    opacity: 1;
  }
  100% {
    transform: scale(2);
    opacity: 0;
  }
}
body {
  font-size: 0.9rem;
}
.page-wrapper .sidebar-wrapper,
.sidebar-wrapper .sidebar-brand > a,
.sidebar-wrapper .sidebar-dropdown > a:after,
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before,
.sidebar-wrapper ul li a i,
.page-wrapper .page-content,
.sidebar-wrapper .sidebar-search input.search-menu,
.sidebar-wrapper .sidebar-search .input-group-text,
.sidebar-wrapper .sidebar-menu ul li a,
#show-sidebar,
#close-sidebar {
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
}

/*----------------page-wrapper----------------*/

.page-wrapper {
  height: 100vh;
}

.page-wrapper .theme {
  width: 40px;
  height: 40px;
  display: inline-block;
  border-radius: 4px;
  margin: 2px;
}

.page-wrapper .theme.chiller-theme {
  background: #1e2229;
}

/*----------------toggeled sidebar----------------*/

.page-wrapper.toggled .sidebar-wrapper {
  left: 0px;
}

@media screen and (min-width: 768px) {
  .page-wrapper.toggled .page-content {
    padding-left: 300px;
  }
}
/*----------------show sidebar button----------------*/
#show-sidebar {
  position: fixed;
  left: 0;
  top: 10px;
  border-radius: 0 4px 4px 0px;
  width: 35px;
  transition-delay: 0.3s;
}
.page-wrapper.toggled #show-sidebar {
  left: -40px;
}
/*----------------sidebar-wrapper----------------*/

.sidebar-wrapper {
  width: 260px;
  height: 100%;
  max-height: 100%;
  position: fixed;
  top: 0;
  left: -300px;
  z-index: 999;
}

.sidebar-wrapper ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.sidebar-wrapper a {
  text-decoration: none;
}

/*----------------sidebar-content----------------*/

.sidebar-content {
  max-height: calc(100% - 30px);
  height: calc(100% - 30px);
  overflow-y: auto;
  position: relative;
}

.sidebar-content.desktop {
  overflow-y: hidden;
}

/*--------------------sidebar-brand----------------------*/

.sidebar-wrapper .sidebar-brand {
  padding: 10px 20px;
  display: flex;
  align-items: center;
}

.sidebar-wrapper .sidebar-brand > a {
  text-transform: uppercase;
  font-weight: bold;
  flex-grow: 1;
}

.sidebar-wrapper .sidebar-brand #close-sidebar {
  cursor: pointer;
  font-size: 20px;
}
/*--------------------sidebar-header----------------------*/

.sidebar-wrapper .sidebar-header {
  padding: 20px;
  overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic {
  float: left;
  width: 60px;
  padding: 2px;
  border-radius: 12px;
  margin-right: 15px;
  overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic img {
  object-fit: cover;
  height: 100%;
  width: 100%;
}

.sidebar-wrapper .sidebar-header .user-info {
  float: left;
}

.sidebar-wrapper .sidebar-header .user-info > span {
  display: block;
}

.sidebar-wrapper .sidebar-header .user-info .user-role {
  font-size: 12px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status {
  font-size: 11px;
  margin-top: 4px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status i {
  font-size: 8px;
  margin-right: 4px;
  color: #5cb85c;
}

/*-----------------------sidebar-search------------------------*/

.sidebar-wrapper .sidebar-search > div {
  padding: 10px 20px;
}

/*----------------------sidebar-menu-------------------------*/

.sidebar-wrapper .sidebar-menu {
  padding-bottom: 10px;
}

.sidebar-wrapper .sidebar-menu .header-menu span {
  font-weight: bold;
  font-size: 14px;
  padding: 15px 20px 5px 20px;
  display: inline-block;
}

.sidebar-wrapper .sidebar-menu ul li a {
  display: inline-block;
  width: 100%;
  text-decoration: none;
  position: relative;
  padding: 8px 30px 8px 20px;
}

.sidebar-wrapper .sidebar-menu ul li a i {
  margin-right: 10px;
  font-size: 12px;
  width: 30px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  border-radius: 4px;
}

.sidebar-wrapper .sidebar-menu ul li a:hover > i::before {
  display: inline-block;
  animation: swing ease-in-out 0.5s 1 alternate;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown > a:after {
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  content: "\f105";
  font-style: normal;
  display: inline-block;
  font-style: normal;
  font-variant: normal;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background: 0 0;
  position: absolute;
  right: 15px;
  top: 14px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu ul {
  padding: 5px 0;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li {
  padding-left: 25px;
  font-size: 13px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before {
  content: "\f111";
  font-family: "Font Awesome 5 Free";
  font-weight: 400;
  font-style: normal;
  display: inline-block;
  text-align: center;
  text-decoration: none;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  margin-right: 10px;
  font-size: 8px;
}

.sidebar-wrapper .sidebar-menu ul li a span.label,
.sidebar-wrapper .sidebar-menu ul li a span.badge {
  float: right;
  margin-top: 8px;
  margin-left: 5px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .badge,
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .label {
  float: right;
  margin-top: 0px;
}

.sidebar-wrapper .sidebar-menu .sidebar-submenu {
  display: none;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown.active > a:after {
  transform: rotate(90deg);
  right: 17px;
}

/*--------------------------side-footer------------------------------*/

.sidebar-footer {
  position: absolute;
  width: 100%;
  bottom: 0;
  display: flex;
}

.sidebar-footer > a {
  flex-grow: 1;
  text-align: center;
  height: 30px;
  line-height: 30px;
  position: relative;
}

.sidebar-footer > a .notification {
  position: absolute;
  top: 0;
}

.badge-sonar {
  display: inline-block;
  background: #980303;
  border-radius: 50%;
  height: 8px;
  width: 8px;
  position: absolute;
  top: 0;
}

.badge-sonar:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  border: 2px solid #980303;
  opacity: 0;
  border-radius: 50%;
  width: 100%;
  height: 100%;
  animation: sonar 1.5s infinite;
}

/*--------------------------page-content-----------------------------*/

.page-wrapper .page-content {
  display: inline-block;
  width: 100%;
  padding-left: 0px;
  padding-top: 20px;
}

.page-wrapper .page-content > div {
  padding: 20px 40px;
}

.page-wrapper .page-content {
  overflow-x: hidden;
}

/*------scroll bar---------------------*/

::-webkit-scrollbar {
  width: 5px;
  height: 7px;
}
::-webkit-scrollbar-button {
  width: 0px;
  height: 0px;
}
::-webkit-scrollbar-thumb {
  background: #525965;
  border: 0px none #ffffff;
  border-radius: 0px;
}
::-webkit-scrollbar-thumb:hover {
  background: #525965;
}
::-webkit-scrollbar-thumb:active {
  background: #525965;
}
::-webkit-scrollbar-track {
  background: transparent;
  border: 0px none #ffffff;
  border-radius: 50px;
}
::-webkit-scrollbar-track:hover {
  background: transparent;
}
::-webkit-scrollbar-track:active {
  background: transparent;
}
::-webkit-scrollbar-corner {
  background: transparent;
}


/*-----------------------------chiller-theme-------------------------------------------------*/

.chiller-theme .sidebar-wrapper {
    background: #31353D;
}

.chiller-theme .sidebar-wrapper .sidebar-header,
.chiller-theme .sidebar-wrapper .sidebar-search,
.chiller-theme .sidebar-wrapper .sidebar-menu {
    border-top: 1px solid #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
    border-color: transparent;
    box-shadow: none;
}

.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-role,
.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-status,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text,
.chiller-theme .sidebar-wrapper .sidebar-brand>a,
.chiller-theme .sidebar-wrapper .sidebar-menu ul li a,
.chiller-theme .sidebar-footer>a {
    color: #818896;
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li:hover>a,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active>a,
.chiller-theme .sidebar-wrapper .sidebar-header .user-info,
.chiller-theme .sidebar-wrapper .sidebar-brand>a:hover,
.chiller-theme .sidebar-footer>a:hover i {
    color: #b8bfce;
}

.page-wrapper.chiller-theme.toggled #close-sidebar {
    color: #bdbdbd;
}

.page-wrapper.chiller-theme.toggled #close-sidebar:hover {
    color: #ffffff;
}

.chiller-theme .sidebar-wrapper ul li:hover a i,
.chiller-theme .sidebar-wrapper .sidebar-dropdown .sidebar-submenu li a:hover:before,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu:focus+span,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active a i {
    color: #16c7ff;
    text-shadow:0px 0px 10px rgba(22, 199, 255, 0.5);
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li a i,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown div,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
    background: #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-menu .header-menu span {
    color: #6c7b88;
}

.chiller-theme .sidebar-footer {
    background: #3a3f48;
    box-shadow: 0px -1px 5px #282c33;
    border-top: 1px solid #464a52;
}

.chiller-theme .sidebar-footer>a:first-child {
    border-left: none;
}

.chiller-theme .sidebar-footer>a:last-child {
    border-right: none;
}

.inner{
height:100px;
position: relative;
display:flex;
text-align:center;
font-style:italic;
font-height:50px; 
}
</style>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
        content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Sidebar template</title>

    <!-- using online links -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">

    <!-- using local links -->
    <!-- <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../node_modules/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css"> -->

    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sidebar-themes.css">
    <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
</head>

<body>
<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">Wireless Police Department Maharashtra</a>
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg" alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-name">Palakurti
            <strong>ABC</strong>
          </span>
          <span class="user-role">Administrator</span>
         
        </div>
      </div>
 
 
   

      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li class="sidebar-dropdown">
                  <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-database fa-fw"></i>  Item</a>
             

            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="/fillitemdetails">Add Item</a>
                </li>
                <li>
                <a href="/show-items">View Item</a>
                </li>
                <li>
                  <a href="#">Import Item</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#"><i class="fa fa-laptop fa-fw"></i>
              <span>Purchase Request</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="/createpurchaserequest">Add Purchase Request
                  </a>
                </li>
                <li>
                <a href="#">View Purchase Request</a>
                </li>
                <li>
                  <a href="#">Tender Form</a>
                </li>
                
                <li>
                  <a href="/createALetter">AL Letter</a>
                </li>
              </ul>
            </div>
          </li>
         
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-users fa-fw"></i>
              <span>Suppliers</span>
            </a>
           
             <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="/fillsupplierdetails">Add Supplier
                  </a>
                </li>
                <li>
                <a href="/show-suppliers">View Supplier</a>
                </li>
                <li>
                  <a href="#">Import Supplier</a>
                </li>
              </ul>
            </div>
           
            </li>
           
            <li class="sidebar-dropdown">
             
                  <a href="#"><i class="fa fa-bullseye fa-fw"></i> Purchase Order</a>
                 
                  <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">AT Letter
                  </a>
                </li>
                <li>
                  <a href="#">Bill Statement</a>
                </li>
              </ul>
            </div>
           
                 
              </li>
                <li class="sidebar-menu">
                  <a href="/showmaterialreports"><i class='fa fa-book fa-fw'></i>  Material Report</a>
                </li>
                <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-users fa-fw"></i>
              <span>Notifications</span>
            </a>
           
             <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="/getpendingpurchaserequest">Pending Purchase Request
                  </a>
                </li>
                <li>
                <a href="/getpendingpurchaseorder">Pending Purchase Order</a>
                </li>
                
              </ul>
            </div>
           
            </li>
                <li class="sidebar-menu">
                  <a href="/show-users"><i class="fa fa-bank fa-fw"></i>  Admin Setting</a>
                </li>
                <li class="sidebar-menu">
                  <a href="#"> <i class="fa fa-history fa-fw"></i>  History</a>
                </li>
                <li class="sidebar-menu">
                  <a href="/eprocurement">
                <i class="fa fa-cog fa-fw"></i>Logout</a>
                </li>
 
             
 </ul>

</div>
</div>        
         
   
  </nav>
  <!-- sidebar-wrapper  -->
  
  <main class="page-content">
    <div class="container">
      <h2>PURCHASE REQUEST MANAGEMENT SYSTEM</h2>
      <hr>
     
      <section class="content" style="background-color:#FFFFFF" >
<div class="container-fluid" style="margin-top: 150px">
<!-- Small boxes (Stat box) -->
<div class="row">
<div class="col-lg-3 col-6" style="margin-left: 1px">
<!-- small box -->
<div class="small-box " style="background-color : #B5EAAA">
<div class="inner">
<p>Items</p>
</div>

<div class="icon">
<i class="ion ion-soup-can"></i>
</div>
<a href="/show-items" class="small-box-footer">More info <i
class="glyphicon glyphicon-arrow-right"></i></a>
</div>
</div>


<!-- ./col -->
<!--  
<div class="col-lg-3 col-6" style="margin-left: px">
<!-- small box -->
<!--  <div class="small-box bg-lime">
<div class="inner">
<h3>${utotal }</h3>

<p>Users</p>
</div>

<div class="icon">
<i class="ion ion-person"></i>
</div>
<a href="/show-users" class="small-box-footer">More info <i
class="glyphicon glyphicon-arrow-right"></i></a>
</div>
</div>
 -->

<div class="col-lg-3 col-6" style="margin-left: 50px">
<!-- small box -->
<div class="small-box" style="background-color : #FFDB58">
<div class="inner">


<p>Purchase Request</p>
</div>

<div class="icon">
<i class="ion ion-folder"></i>
</div>
<a href="/show-purchaserequests" class="small-box-footer">More
info <i class="glyphicon glyphicon-arrow-right"></i>
</a>
</div>
</div>

<!-- ./col -->
<div class="col-lg-3 col-6" style="margin-left: 50px">
<!-- small box -->
<div class="small-box" style="background-color : #F75D59">
<div class="inner">


<p>Purchase Order</p>
</div>
<div class="icon">
<i class="ion ion-ios-cart"></i>
</div>
<a href="/showpurchaseorders" class="small-box-footer">More
info <i class="glyphicon glyphicon-arrow-right"></i>
</a>
</div>
</div>




<div class="col-lg-3 col-6" style="margin-left:1px">
<!-- small box -->
<div class="small-box"style="background-color : #B5EAAA">
<div class="inner">


<p>Supplier</p>
</div>

<div class="icon">
<i class="ion ion-document-text"></i>
</div>
<a href="/show-suppliers" class="small-box-footer">More
info <i class="glyphicon glyphicon-arrow-right"></i>
</a>
</div>
</div>

<div class="col-lg-3 col-6" style="margin-left: 50px">
<!-- small box -->
<div class="small-box bg-muted" style="background-color : #FFDB58">
<div class="inner">


<p>Purchase Status</p>
</div>

<div class="icon">
<i class="ion ion-stats-bars"></i>
</div>
<a href="/show-purchaserequests" class="small-box-footer">More
info <i class="glyphicon glyphicon-arrow-right"></i>
</a>
</div>
</div>

<div class="col-lg-3 col-6" style="margin-left: 50px">
<!-- small box -->
<div class="small-box"style="background-color : #F75D59">
<div class="inner">


<p>Bill Statement</p>
</div>

<div class="icon">
<i class="ion ion-clipboard"></i>
</div>
<a href="/show-purchaserequests" class="small-box-footer">More
info <i class="glyphicon glyphicon-arrow-right"></i>
</a>
</div>
</div>

</div>
</div>



</section>
     

      <footer class="text-center">
        <div class="mb-2">
          <small>
            © 2021 made by - <a target="_blank" rel="noopener noreferrer" href="https://www.cumminscollege.org/">
           students of Cummins College of Engineering Pune
            </a>
          </small>
        </div>
      </footer>

    </div>

  </main>
  
  <!-- page-content" -->
</div>
    <!-- page-wrapper -->

    <!-- using online scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
    </script>
    <script src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- using local scripts -->
    <!-- <script src="../node_modules/jquery/dist/jquery.min.js"></script>
    <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script> -->
<script>
jQuery(function ($) {
	  // Dropdown menu
	  $('.sidebar-dropdown > a').click(function () {
	    $('.sidebar-submenu').slideUp(200);
	    if ($(this).parent().hasClass('active')) {
	      $('.sidebar-dropdown').removeClass('active');
	      $(this).parent().removeClass('active');
	    } else {
	      $('.sidebar-dropdown').removeClass('active');
	      $(this).next('.sidebar-submenu').slideDown(200);
	      $(this).parent().addClass('active');
	    }
	  });

	  //toggle sidebar
	  $('#toggle-sidebar').click(function () {
	    $('.page-wrapper').toggleClass('toggled');
	  });

	  // bind hover if pinned is initially enabled
	  if ($('.page-wrapper').hasClass('pinned')) {
	    $('#sidebar').hover(
	      function () {
	        console.log('mouseenter');
	        $('.page-wrapper').addClass('sidebar-hovered');
	      },
	      function () {
	        console.log('mouseout');
	        $('.page-wrapper').removeClass('sidebar-hovered');
	      }
	    );
	  }

	  //Pin sidebar
	  $('#pin-sidebar').click(function () {
	    if ($('.page-wrapper').hasClass('pinned')) {
	      // unpin sidebar when hovered
	      $('.page-wrapper').removeClass('pinned');
	      $('#sidebar').unbind('hover');
	    } else {
	      $('.page-wrapper').addClass('pinned');
	      $('#sidebar').hover(
	        function () {
	          console.log('mouseenter');
	          $('.page-wrapper').addClass('sidebar-hovered');
	        },
	        function () {
	          console.log('mouseout');
	          $('.page-wrapper').removeClass('sidebar-hovered');
	        }
	      );
	    }
	  });

	  //toggle sidebar overlay
	  $('#overlay').click(function () {
	    $('.page-wrapper').toggleClass('toggled');
	  });

	  //switch between themes
	  var themes =
	    'default-theme legacy-theme chiller-theme ice-theme cool-theme light-theme';
	  $('[data-theme]').click(function () {
	    $('[data-theme]').removeClass('selected');
	    $(this).addClass('selected');
	    $('.page-wrapper').removeClass(themes);
	    $('.page-wrapper').addClass($(this).attr('data-theme'));
	  });

	  // switch between background images
	  var bgs = 'bg1 bg2 bg3 bg4';
	  $('[data-bg]').click(function () {
	    $('[data-bg]').removeClass('selected');
	    $(this).addClass('selected');
	    $('.page-wrapper').removeClass(bgs);
	    $('.page-wrapper').addClass($(this).attr('data-bg'));
	  });

	  // toggle background image
	  $('#toggle-bg').change(function (e) {
	    e.preventDefault();
	    $('.page-wrapper').toggleClass('sidebar-bg');
	  });

	  // toggle border radius
	  $('#toggle-border-radius').change(function (e) {
	    e.preventDefault();
	    $('.page-wrapper').toggleClass('boder-radius-on');
	  });

	  //custom scroll bar is only used on desktop
	  if (
	    !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
	      navigator.userAgent
	    )
	  ) {
	    $('.sidebar-content').mCustomScrollbar({
	      axis: 'y',
	      autoHideScrollbar: true,
	      scrollInertia: 300,
	    });
	    $('.sidebar-content').addClass('desktop');
	  }
	});
</script>
</body>

</html>