<%--
  Created by IntelliJ IDEA.
  User: chamsoclaptop.vn
  Date: 1/26/2021
  Time: 9:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <meta charset="utf-8">
      <title>Shop Furniture</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Responsive Minimal Bootstrap Theme">
      <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
      <meta name="author" content="">


      <!--[if lt IE 9]>
      <script src="js/jsp5shiv.js"></script>
      <![endif]-->


      <!-- CSS Files
      ================================================== -->
      <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
      <link rel="stylesheet" href="css/jpreloader.css" type="text/css">
      <link rel="stylesheet" href="css/animate.css" type="text/css">
      <link rel="stylesheet" href="css/plugin.css" type="text/css">
      <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
      <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
      <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
      <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
      <link rel="stylesheet" href="css/style.css" type="text/css">
      <link rel="stylesheet" href="demo/demo.css" type="text/css">

      <!-- custom background -->
      <link rel="stylesheet" href="css/bg.css" type="text/css">

      <!-- color scheme -->
      <link rel="stylesheet" href="css/color.css" type="text/css" id="colors">

      <!-- load fonts -->
      <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.css" type="text/css">
      <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/style.css" type="text/css">
      <link rel="stylesheet" href="fonts/et-line-font/style.css" type="text/css">

      <!-- revolution slider -->
      <link rel="stylesheet" href="rs-plugin/css/settings.css" type="text/css">
      <link rel="stylesheet" href="css/rev-settings.css" type="text/css">

      <!-- login css -->
      <link rel="stylesheet" href="css/csslogin.css">
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
  </head>


  <style type="text/css">
      body {
          background: #eee;
      }

      .panel-order .row {
          border-bottom: 1px solid #ccc;
      }

      .panel-order .row:last-child {
          border: 0px;
      }

      .panel-order .row .col-md-1 {
          text-align: center;
          padding-top: 15px;
      }

      .panel-order .row .col-md-1 img {
          width: 50px;
          max-height: 50px;
      }

      .panel-order .row .row {
          border-bottom: 0;
      }

      .panel-order .row .col-md-11 {
          border-left: 1px solid #ccc;
      }

      .panel-order .row .row .col-md-12 {
          padding-top: 7px;
          padding-bottom: 7px;
      }

      .panel-order .row .row .col-md-12:last-child {
          font-size: 11px;
          color: #555;
          background: #efefef;
      }

      .panel-order .btn-group {
          margin: 0px;
          padding: 0px;
      }

      .panel-order .panel-body {
          padding-top: 0px;
          padding-bottom: 0px;
      }

      .panel-order .panel-deading {
          margin-bottom: 0;
      }
  </style>
  </head>

  <body>

  <%@include file="header.jsp"%>
  <div class="container bootdey">
      <div class="panel panel-default panel-order">
          <br>
          <div class="panel-body">
              <div class="row">
                  <div class="col-md-1"><img src="https://bootdey.com/img/Content/user_3.jpg" class="media-object img-thumbnail" /></div>
                  <div class="col-md-11">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="pull-right"><label class="label label-danger">rejected</label></div>
                              <span><strong>Order name</strong></span> <span class="label label-info">group name</span><br /> Quantity : 2, cost: $323.13 <br />

                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- footer begin -->
  <%@include file="footer.jsp"%>
  <!-- footer close -->

  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  </script>
  </body>
</html>
