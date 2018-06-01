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
	<%--<util:googleAccount pagecontext="${pageContext}" />--%>
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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	
	<!-- Optional theme -->
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
	<cms:headincludes type="css" closetags="false" />
	
	<!-- CSS Extras -->
	<link rel="stylesheet" type="text/css" href="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/css/admision.css</cms:link>" />
	<cms:headincludes type="css" closetags="false" />
	<!-- JS Extras -->
	<script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=false&key=AIzaSyD9b4PjzXc32agb85sr-iWtLdat1csSB9M"></script>
	<cms:headincludes type="javascript" />
	<script>
	$(document).ready(function(){
		$(".navegacion").hide();
	});
	function showHideMenu() {
		$(".navegacion").toggle()
	}
	
	</script>
</head>
<body>
<c:if test="${cms.isEditMode}">
	<!--=== Placeholder for OpenCms toolbar in edit mode ===-->
	<div style="background: lightgray; height: 52px">&nbsp;</div>
</c:if>
	<!-- Cabecera -->
	<div class="container cabecera fondo_blanco border_bottom_azul_oscuro_1" style="box-shadow: 0px 1px 3px #c3c3c3;">
    <div class="row">
      <div class="col-2">
        <img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Secundaria_Azul.jpg</cms:link>" alt="Universidad de Valladolid" width="105"/>
      </div>
      <div class="col-10 text-right" style="height: 200px;">
        <a href="javascript:showHideMenu()" class="text-color_negro"><i class="fas fa-bars fa-3x"></i></a>
		<div class="navegacion">
			<%--
			<cms:include file="%(link.weak:/system/modules/es.uva.web.portal.peregrine/elements/menu/nav.jsp:2e55a5eb-49ea-11e8-b2a2-0050568213af)" />
			--%>
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation"><a href="#EBAU">Paso 1. EBAU</a></li>
				<li role="presentation"><a href="#Preinscripcion">Paso 2. Preinscripción</a></li>
				<li role="presentation"><a href="#Admision">Paso 3. Admision</a></li>
				<li role="presentation"><a href="#Matricula">Paso 4. Matricula</a></li>
			</ul>
		</div>
      </div>
    </div>
    <div class="row">
      <div class="col-12 text-right">
        <img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/universidaddevalladolid.png</cms:link>" alt="Universidad de Valladolid" />
      </div>
    </div>
  </div>
  	
	<cms:container name="0_f_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
	
	<!-- Paso 01 - EBAU -->
	<a name="EBAU"></a>
	<div class="container fondo_blanco" style="margin-top: 0.9em;">
		<div class="row">
			<div class="col-md-4" style="padding-left: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso01_1.png</cms:link>" class="img-fluid" alt="Paso 1" />
				<cms:container name="1_3_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
			<div class="col-md-8" style="padding-right: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso01_2Ebau.png</cms:link>" class="img-fluid" alt="EBAU" />
				<cms:container name="1_9_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
		</div>
	</div>
	<cms:container name="1_f_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
	
	<!-- Paso 02 - Preinscripcion -->
	<a name="Preinscripcion"></a>
	<div class="container fondo_blanco" style="margin-top: 0.9em;">
		<div class="row">
			<div class="col-md-8" style="padding-left: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso02_2preinscripcion.png</cms:link>" class="img-fluid" alt="Preinscripción" />
				<cms:container name="2_9_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
			<div class="col-md-4" style="padding-right: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso02_1.png</cms:link>" class="img-fluid" alt="Paso 2" />
				<cms:container name="2_3_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
		</div>
	</div>
	<cms:container name="2_f_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
	
	<!-- Paso 03 - Admisión -->
	<a name="Admision"></a>
	<div class="container fondo_blanco" style="margin-top: 0.9em;">
		<div class="row">
			<div class="col-md-4" style="padding-left: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso03_1.png</cms:link>" class="img-fluid" alt="Paso 3" />
				<cms:container name="3_3_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
			<div class="col-md-8" style="padding-right: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso03_2Admision.png</cms:link>" class="img-fluid" alt="Admisión" />
				<cms:container name="3_9_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
		</div>
	</div>
	<cms:container name="3_f_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
	
	<!-- Paso 04 - Maticula -->
	<a name="Matricula"></a>
	<div class="container fondo_blanco" style="margin-top: 0.9em;">
		<div class="row">
			<div class="col-md-8" style="padding-left: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso04_2matricula.png</cms:link>" class="img-fluid" alt="Matrícula" />
				<cms:container name="4_3_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
			<div class="col-md-4" style="padding-right: 0;">
				<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/Paso04_1.png</cms:link>" class="img-fluid" alt="Paso 4" />
				<cms:container name="4_9_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
			</div>
		</div>
	</div>
	<cms:container name="4_f_contenedor" type="contenedor" detailview="true" maxElements="2000"/>
	
	<!-- Footer -->
	<footer>
	
	  <div class="container footer fondo_blanco" style="margin-top: 10px">
		<div class="row">
		  <div class="col-md-6">
			<img src="<cms:link>/system/modules/es.uva.web.portal.peregrine/resources/admision/img/logo_uva_bn.png</cms:link>" alt="Universidad de Valladolid" />
			<form style="padding-top: 30px;">
			  <div class="form-row align-items-center">
				<div class="form-group col-md-9">
				  <input type="search" class="form-control sombra_box_3" style="border: 5px solid #f0c84e; border-radius: 0px;" placeholder="Su dirección email">
				</div>
				<div class="form-group col-md-3">
				  <button type="submit" class="btn btn-primary mb-12 sombra_box_3 fondo_amarillo" style="border: 1px solid #f0c84e;">SUSCRIPCIÓN</button>
				</div>
			  </div>
			</form>
			<i class="fab fa-facebook fa-2x text-color_blanco sombra_box_3 fondo_amarillo"></i> <i class="fab fa-twitter-square fa-2x text-color_blanco sombra_box_3 fondo_amarillo"></i> <i class="fas fa-rss-square fa-2x text-color_blanco sombra_box_3 fondo_amarillo"></i> <i class="fab fa-lg fa-facebook-f"></i> <i class="fab fa-lg fa-twitter"></i>
		  </div>
		  <div class="col-md-6" style="margin-bottom: -5px; margin-right: -20px; filter: grayscale(100%);">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.1930460259437!2d-4.722302584470158!3d41.65157088753852!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712b1b3f53785%3A0xe9ec32442c2575f5!2sPalacio+de+Santa+Cruz!5e0!3m2!1ses!2ses!4v1523444634932" width="102.9%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
		  </div>
		</div>
	  </div>
	  <div class="container fondo_blanco">
		<div class="row fondo_amarillo">
		  <div class="col-md-12">
			<p>uisque varius magna dolor, eu porttitor mi bibendum ut. Duis quis elit et neque fringilla euismod aliquam lobortis lacus. Pellentesque elementum justo orci, sed auctor nisl imperdiet nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
		  </div>
		</div>
	  </div>
	
  	</footer>
  
</body>
</html>