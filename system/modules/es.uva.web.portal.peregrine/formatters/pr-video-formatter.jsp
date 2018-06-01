<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setLocale value="${cms.locale}" />
<cms:bundle basename="es.uva.web.portal.peregrine.video">
<cms:formatter var="content" val="value" rdfa="rdfa">

<div class="container margin-15-bottom">
      

	<c:if test="${not cms.element.settings.hidetitle}">
		<div class="row">
			<div class="col-md-12" style="margin-bottom: 15px;">
				<div class="headline"><h1 ${rdfa.Title}>${value.Title}</h1></div>
			</div>
		</div>
	</c:if>

	<div class="row">
		<c:set var="formatovideo" value="embed-responsive-16by9" />
		<c:if test="${cms.element.settings.formatovideos eq '4_3'}"><c:set var="formatovideo" value="embed-responsive-4by3" /></c:if>  
		<c:if test="${cms.element.settings.formatovideos eq '16_9'}"><c:set var="formatovideo" value="embed-responsive-16by9" /></c:if> 
		<c:forEach var="item" items="${content.valueList.Video}">	
			<c:choose>
			<c:when test="${fn:contains(item.value.Video,'youtube')}">
				<c:if test="${item.value.Video.exists && item.value.Video.isSet}">
				
					<c:set var="cachos_url" value="${fn:substringAfter(item.value.Video,'v=')}" />
					<c:if test="${fn:contains(cachos_url,'list=')}">
						<c:set var="cachos_url" value="${fn:replace(cachos_url,'&list=','?list=')}" />
					</c:if>									
					
					 <div class="${cms:lookup(cms:getListSize(content.valueList.Video), '1:col-xs-12|2:col-sm-6|3:col-sm-4|4:col-md-3 col-sm-6|5:col-md-2 col-sm-6|6:col-md-2 col-sm-4')}" style="margin-bottom: 15px;">
					 
					 	<div class="embed-responsive ${formatovideo}">
							<figure>
								<iframe  src="http://www.youtube.com/embed/<c:out value='${cachos_url}' />" frameborder="0" class="embed-responsive-item" allowfullscreen></iframe>
								<figcaption>${item.value.Titulo}</figcaption>
							</figure>
						</div>
					</div>
					
				</c:if>
				
				<c:if test="${item.value.Video.exists && not item.value.Video.isSet}">
				<div class="${cms:lookup(cms:getListSize(content.valueList.Video), '1:col-xs-12|2:col-sm-6|3:col-sm-4|4:col-md-3 col-sm-6|5:col-md-2 col-sm-6|6:col-md-2 col-sm-4')}">							
					 <div class="embed-responsive ${formatovideo}">
					 	<figure>
							<iframe  src="http://www.youtube.com/embed/Bmrx8MFJl6s" frameborder="0" class="embed-responsive-item" allowfullscreen></iframe>
							<figcaption>${item.value.Titulo}</figcaption>
						</figure>
					</div>
				</div>	
				</c:if>
			</c:when>
			<c:when test="${fn:contains(item.value.Video,'vimeo')}">
				<c:if test="${item.value.Video.exists && item.value.Video.isSet}">
					<c:set var="cachos_url" value="${fn:substringAfter(value.Video,'vimeo.com/')}" />
					
					<div class="${cms:lookup(cms:getListSize(content.valueList.Video), '1:col-xs-12|2:col-sm-6|3:col-sm-4|4:col-md-3 col-sm-6|5:col-md-2 col-sm-6|6:col-md-2 col-sm-4')}">					
						<h4>${item.value.Titulo}</h4>
						<div class="embed-responsive ${formatovideo}">
							<iframe src="http://player.vimeo.com/video/${cachos_url}?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" class="embed-responsive-item" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
						</div>
					</div>
				</c:if>
			</c:when>
			<c:otherwise>
				<c:if test="${item.value.Video.exists && not item.value.Video.isSet}">
				<div class="${cms:lookup(cms:getListSize(content.valueList.Video), '1:col-xs-12|2:col-sm-6|3:col-sm-4|4:col-md-3 col-sm-6|5:col-md-2 col-sm-6|6:col-md-2 col-sm-4')}">					
					<div class="embed-responsive ${formatovideo}">
						<figure>
							<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/Bmrx8MFJl6s" frameborder="0" allowfullscreen></iframe>
							<figcaption>${item.value.Titulo}</figcaption>
						</figure>
					</div>
				</div>	
				</c:if>
			</c:otherwise>
			</c:choose>
		</c:forEach>
			
	</div>
</div>

</cms:formatter>
</cms:bundle>