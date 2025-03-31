<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>title</title>
    <link rel="stylesheet" href="/resource/css/common.css">
	<script src="/resource/js/jquery-3.7.1.min.js"></script>
  </head>
  
  <body>
  	<div class="wrap">
  		<tiles:insertAttribute name="header" />
		  <div class='content'>  	
  			<tiles:insertAttribute name="left"/>
	  		<div class="inner">
	  			<tiles:insertAttribute name="body"/>
	  		</div>
  		</div>
  		<tiles:insertAttribute name="foot" />
  	</div>
  </body>
  