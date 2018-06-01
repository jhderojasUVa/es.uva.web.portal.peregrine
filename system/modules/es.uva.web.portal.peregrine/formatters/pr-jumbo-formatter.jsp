<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- Comprobacion de variables --%>
<%-- Variables de los colores --%>
<c:set var="color_fondo">${cms.element.settings.color_fondo}</c:set>
<c:if test="${color_fondo == ''}">
	<c:set var="color_fondo">blanco</c:set>
</c:if>
<c:set var="color_letras">${cms.element.settings.color_letras}</c:set>
<c:if test="${color_letras == ''}">
	<c:set var="color_letras">azul</c:set>
</c:if>
<cms:formatter var="content">
	<c:if test="${!content.value.Image.exists || content.value.Image == ''}">
		<div class="jumbotron_${color_letras}_${color_fondo}_no">
			<h1 ${content.rdfa.Title}>${content.value.Title}</h1>
			<button href="${content.value.Link.value.URI}"><a href="${content.value.Link.value.URI}">${content.value.Link.value.Text}</a></button>
		</div> <!-- end jumbotron -->
	</c:if>
	<c:if test="${content.value.Image.exists && content.value.Image != ''}">
		<div class="row jumbo fondo_${color_fondo} margin_left_0 margin_right_0">
			<div class="col-md-4" style="border-radius: 4px; background: url('${content.value.Image}') no-repeat; background-size: cover;">
				&nbsp;
			</div>
			<div class="col-md-8">
				<h1>${content.value.Title}</h1>
				<p>${content.value.Text}</p>
				<button href="${content.value.Link.value.URI}"><a href="${content.value.Link.value.URI}" role="link">${content.value.Link.value.Text}</a></button>
			</div>
		</div> <!-- end jumbo -->
	</c:if>
	
<%--
	<div class="margin-bottom-30">
		<div class="headline">
			<h3 ${content.rdfa.Title}>${content.value.Title}</h3>
		</div>
		<div class="row">
			<div class="${content.value.Image.exists ? 'col-md-8 col-sm-10 col-xs-12' : 'col-xs-12' }">
				<div ${content.rdfa.Text}>${content.value.Text}</div>
				<c:if test="${content.value.Link.exists}">
					<p>
						<a class="btn-u btn-u-small"
							href="<cms:link>${content.value.Link}</cms:link>">${paragraph.value.Link}</a>
					</p>
				</c:if>
			</div>
			<c:if test="${content.value.Link.exists}">
				<div class="leer_mas">
					<a href="<cms:link>${content.value.Link.value.URI}</cms:link>" target="_blank" role="link" aria-label="Enlace a ${content.value.Link.value.URI}">${content.value.Link.value.Text}</a>
				</div>
			</c:if>		
		</div>
	</div>
--%>
</cms:formatter>