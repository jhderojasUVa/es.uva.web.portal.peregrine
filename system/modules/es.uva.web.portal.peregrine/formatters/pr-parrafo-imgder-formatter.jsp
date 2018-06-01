<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setLocale value="${cms.locale}" />
<cms:bundle basename="es.uva.web.portal.peregrine.parrafo">
<cms:formatter var="content" val="value" rdfa="rdfa">
<div class="container margin-15-bottom">
<%--

/* Semanticamente habria que ve, segun como escriban en un futuro
   como consideramos esto. Así pueden ser secciones (section) del article
   principal, o lo dejamos como un article generico el container gordo
   y vemos si asi, el significado es el correcto
   
   Por depronto, no metemos el section (con los header correspondientes, semanticos)
   que mas vale de poco que de mucho y mal */

--%>
<c:set var="elementos_total" value="0"/>
<c:if test="${!content.valueList.Paragraph.isEmpty()}">
	<fmt:parseNumber var="elementos_total" integerOnly="true" type="number" value="${(12/fn:length(content.valueList.Paragraph)/10)}" />
</c:if>
	<c:if test="${not cms.element.settings.hidetitle}">
		<div class="headline"><h1 ${rdfa.Title}>Parrafo Img Der ${value.Title}</h1></div>
	</c:if>
	<div class="row">
	
	<c:forEach var="paragraph" items="${content.valueList.Paragraph}">
	
		<div class="col-md-${elementos_total}">
			
	
			<c:if test="${paragraph.value.Headline.isSet}">
				<div class="headline"><h2 ${paragraph.rdfa.Headline}>${paragraph.value.Headline}</h2></div>
			</c:if>

			<div  ${paragraph.rdfa["Link|Image"]}>
					<div class="row">
						<div class="<c:choose><c:when test="${paragraph.value.Image.exists}">col-md-8 col-sm-10 col-xs-12</c:when><c:otherwise>col-xs-12</c:otherwise></c:choose>">
							<div ${paragraph.rdfa.Text}>
								<p>
									${paragraph.value.Text}
								</p>
							</div>		
							<c:if test="${paragraph.value.Link.exists}">
								<div class="leer_mas">
									<a href="<cms:link>${paragraph.value.Link.value.URI}</cms:link>" role="link" aria-label="Enlace a ${paragraph.value.Link.value.URI}">${paragraph.value.Link.value.Text}</a>
								</div>
							</c:if>		
						</div>
						<c:if test="${paragraph.value.Image.exists}">
							<div class="col-md-4 col-sm-2 hidden-xs">
								<div class="thumbnail-kenburn"><div class="overflow-hidden">
									<figure><cms:img src="${paragraph.value.Image.value.Image}" scaleColor="transparent" width="400" scaleType="0" noDim="true" cssclass="img-responsive" alt="${paragraph.value.Image.value.Title}" title="${paragraph.value.Image.value.Title}" /></figure>
								</div></div>		
							</div>
						</c:if>
				</div>		
			</div>
		</div>
	</c:forEach> 
	</div>
</div>
</cms:formatter>
</cms:bundle>
