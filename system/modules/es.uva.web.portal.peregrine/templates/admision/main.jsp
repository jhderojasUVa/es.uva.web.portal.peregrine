<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %><%--
--%><%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %><%--
--%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><%--
--%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><%--
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--
--%><%--
--%><fmt:setLocale value="${cms.locale}" /><%--
--%><!DOCTYPE HTML>
<html lang="${cms.locale}">
<head>
	<title><cms:info property="opencms.title" /></title>
	<meta name="description" content="<cms:property name="Description" file="search" default="" />">
	<meta name="keywords" content="<cms:property name="Keywords" file="search" default="" />">
	<meta http-equiv="Content-Type" content="text/html; charset=${cms.requestContext.encoding}">
	<meta name="robots" content="index, follow">
	<meta name="revisit-after" content="7 days">
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
	<meta http-equiv="Pragma" content="no-cache, no-store" />
	<meta http-equiv="Expires" content="0" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<cms:enable-ade/>
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="/resources/img/favicon.ico" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<!-- Font Awesome -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
	
	<cms:headincludes type="css" closetags="false" />
	
	<!-- CSS Extras -->
	<%-- ELIMINADO HASTA QUE SE ACABEN LOS ESTILOS
	<link rel="stylesheet" type="text/css" href="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/css/fonts.css</cms:link>" />
	<link rel="stylesheet" type="text/css" href="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/css/admision.css</cms:link>" />
	<link rel="stylesheet" type="text/css" href="/resources/uvainnova/css/principal.css" />
	<link rel="stylesheet" type="text/css" href="/resources/uvainnova/css/botones.css" />
	<link rel="stylesheet" type="text/css" href="/resources/uvainnova/css/menus.css" />
	<link rel="stylesheet" type="text/css" href="/resources/uvainnova/css/filas.css" />
	--%>
	<cms:headincludes type="css" closetags="false" />
	<!-- JS Extras -->
	<script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=false&key=AIzaSyD9b4PjzXc32agb85sr-iWtLdat1csSB9M"></script>
	
	<%-- ELIMINADO HASTA QUE SE ACABEN LOS ESTILOS
	<script type="text/javascript"  href="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/js/principal.js</cms:link>"></script>
	--%>
	<cms:headincludes type="javascript" />	
</head>
<body>
<c:if test="${cms.isEditMode}">
	<!--=== Placeholder for OpenCms toolbar in edit mode ===-->
	<div style="background: lightgray; height: 52px">&nbsp;</div>
</c:if>

	<!-- Logo -->
	<div class="container">
		<div class="row logo">
			<div class="col-md-12">
				<img src="/resources/uvainnova/img/UVainnovaRGBweb.png" width="250" alt="UVaInnova">
			</div>
		</div>
	</div>
	<!-- Nav -->
		<div class="container col-centered">
			<nav id="navegacion_principal">
				<div class="nav_principal">
					<cms:include file="%(link.weak:/system/modules/es.uva.web.portal.peregrine/elements/menu/nav_main.jsp:20d84108-21e9-11e8-b7db-0050568213af)" />
				</div>
			</nav>
		</div>
	<!-- Migas -->
	<div class="container migasnavegacion" role="main">
		<div class="row">
			<div class="col-md-12">
				<cms:include file="%(link.strong:/system/modules/es.uva.web.portal.peregrine/elements/menu/nav_breadcrumb.jsp:8afdcc1e-206e-11e8-b845-0242ac11002b)" />
			</div>
		</div>
	</div>
	<div class="container" role="main">	
		<article role="article">
			<div class="row row-eq-height">
					<cms:container name="contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
		</article>
	</div>
	<!-- Footer -->
	<footer>
		
  	</footer>
  
</body>
</html>