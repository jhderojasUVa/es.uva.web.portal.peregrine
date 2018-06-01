<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setLocale value="${cms.locale}" />
<cms:bundle basename="es.uva.web.portal.peregrine.parrafo">
<cms:formatter var="content" val="value" rdfa="rdfa">
<div class="parrafo_container">
	<c:set var="elementos_total" value="0"/>
	<c:if test="${!content.valueList.Paragraph.isEmpty()}">
		<fmt:parseNumber var="elementos_total" integerOnly="true" type="number" value="${(12/fn:length(content.valueList.Paragraph)/10)}" />
	</c:if>
		<c:if test="${not cms.element.settings.hidetitle}">
			<div class="headline"><h1 ${rdfa.Title}>${value.Title}</h1></div>
		</c:if>

		<c:forEach var="paragraph" items="${content.valueList.Paragraph}">

				<c:if test="${paragraph.value.Headline.isSet}">
					<div class="headline"><h2 ${paragraph.rdfa.Headline}>${paragraph.value.Headline}</h2></div>
				</c:if>

			<p>${paragraph.value.Text}</p>	
			<c:if test="${paragraph.value.Link.exists}">
				<div class="text-center"><a href="<cms:link>${paragraph.value.Link.value.URI}</cms:link>" class="btn btn-primary" role="link" aria-label="Enlace a ${paragraph.value.Link.value.URI}">${paragraph.value.Link.value.Text}</a></div>
			</c:if>		
		</c:forEach> 
</div>
</cms:formatter>
</cms:bundle>
