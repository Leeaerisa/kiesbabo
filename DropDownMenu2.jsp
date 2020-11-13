<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DropDown Menu</title>
<style> 

    html{
           height:100%; /* make sure it is at least as tall as the viewport */
       }
       body{
           height:100%; /* force the BODY element to match the height of the HTML element */
           position: relative;
       }
       .dropdown-submenu {
           border-bottom: 1px solid #ccc;
       }
       #mn-wrapper {
         display: table;
         width: 100%;
         position: absolute;
         height: 100%;
       }
       .mn-sidebar {
         display: table-cell;
         position: relative;
         vertical-align: top;
         padding-bottom: 49px;
         background: #272930;
         width: 216px;
         z-index: 2;
       }
       #mn-cont {
         display: table-cell;
         vertical-align: top;

         position: relative;
         padding: 0;
       }
       .container {
         margin-right: auto;
       }
       .cnt-mcont {
         background-color: #F6F6F6;
         color: inherit;
         font-size: 13px;
         font-weight: 200;
         line-height: 21px;
         padding: 15px 30px 30px 30px;
         margin-top: 0;
         height: 101vh;
       }
       .mn-sidebar .mn-toggle {
         display: none;
         padding: 10px 0;
         text-align: center;
         cursor: pointer;
       }
       .mn-vnavigation {
         margin: 0 0 0 0;
         padding: 0;
         border-top: 1px solid #1a1c20;
         border-bottom: 1px solid #2f323a;
       }
       .mn-vnavigation li a {
         border-top: 1px solid #32353e;
         border-bottom: 1px solid #1a1c20;
         display: block;
         padding: 14px 18px 13px 15px;
         color: #fff;
         text-decoration: none;
         font-size: 12px;
         font-weight: 300;
         text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.3);
         white-space: nowrap;
       }
       .dropdown-submenu > .dropdown-menu {
           top: 0;
           left: 100%;
           margin-top: -6px;
           margin-left: -1px;
           height: 101vh;
           width: 216px;
           background: #272930;
       }
       .dropdown-submenu:hover > .dropdown-menu {
           display: block;
       }
       .dropdown-submenu > a:after {
           display: block;
           content: " ";
           float: right;
           width: 0;
           height: 0;
           border-color: transparent;
           border-style: solid;
           border-width: 5px 0 5px 5px;
           border-left-color: #ccc;
           margin-top: 5px;
           margin-right: -10px;
       }
       .dropdown-submenu:hover > a:after {
           border-left-color: #fff;
       }
       .dropdown-submenu.pull-left {
           float: none;
       }
       .dropdown-submenu.pull-left > .dropdown-menu {
           left: -100%;
           margin-left: 10px;
           -webkit-border-radius: 6px 0 6px 6px;
           -moz-border-radius: 6px 0 6px 6px;
           border-radius: 6px 0 6px 6px;
       }
       ul {
           list-style: none;
       }
</style>


</head>
<body>

<div id="mn-wrapper">
           <div class="mn-sidebar">
               <div class="mn-toggle"><i class="fa fa-bars"></i></div>
               <div class="mn-navblock">
                   <ul class="mn-vnavigation">
                       <li class="dropdown-submenu active">
                           <a tabindex="-1" href="#">Client Advice</a>
                           <ul class="dropdown-menu">
                               <li><a tabindex="-1" href="#">Pre-advice</a></li>
                               <li><a href="#">Strategy & Technical</a></li>
                               <li><a href="#">Research</a></li>
                               <li class="dropdown-submenu active">
                                   <a href="#">APL & Products</a>
                                   <ul class="dropdown-menu parent">
                                       <li style=" border-bottom: 1px solid #ccc;">
                                           <a href="#">
                                               Approved Product List
                                               <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
                                               <span aria-hidden="true" class="glyphicon glyphicon-minus" style="display:none;"></span>
                                           </a>

                                           <ul class="child">
                                               <li style="padding:10px 15px;">Platforms</li>
                                               <li style="padding: 10px 15px;">Managed Funds</li>
                                               <li style="padding: 10px 15px;">Wealth Protection</li>
                                               <li style="padding: 10px 15px;">Listed Securities</li>
                                               <li style="padding: 10px 15px;">Wealth Protection</li>
                                               <li style="padding: 10px 15px;">Listed Securities</li>
                                               <li style="padding: 10px 15px;">Listed Securities</li>
                                           </ul>

                                       </li>
                                       <li style=" border-bottom: 1px solid #ccc;"><a href="#">Model Portfolios</a></li>
                                       <li style=" border-bottom: 1px solid #ccc;"><a href="#">Non-approved Products</a></li>
                                   </ul>
                               </li>
                               <li><a href="#">Implementation</a></li>
                               <li><a href="#">Review</a></li>
                               <li><a href="#">Execution Only</a></li>
                           </ul>
                       </li>
                       <li><a href="#">Personal Development</a></li>
                       <li><a href="#">Practice</a></li>
                       <li><a href="#">News</a></li>
                   </ul>
               </div>
               <div class="text-right collapse-button" style="padding:7px 9px;">

               </div>
           </div>
           <div class="container" id="mn-cont">
               <div class="cnt-mcont">
                   <h1>Title Page</h1>
               </div>
           </div>
       </div>
  
  
  
</body>
</html>
</layoutTag:layout>












