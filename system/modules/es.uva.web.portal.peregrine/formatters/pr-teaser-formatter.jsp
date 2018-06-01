<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setLocale value="${cms.locale}" />
<cms:bundle basename="es.uva.web.portal.peregrine.teaser">
<cms:formatter var="content" val="value" rdfa="rdfa">
<div class="container margin-15-bottom">
	<c:if test="${!cms.element.settings.hidetitle}">
        <h3>${content.value.Title}</h3>
    </c:if>
	
	<div class="row">
		<c:set var="total">${fn:length(content.valueList.Item)}</c:set>
		<c:forEach var="item" items="${content.valueList.Item}" varStatus="status">
			<div ${item.rdfa.Link} class="${cms:lookup(cms:getListSize(content.valueList.Item), '1:col-xs-12|2:col-sm-6|3:col-sm-4|4:col-md-3 col-sm-6|5:col-md-2 col-sm-6|6:col-md-2 col-sm-4')}">				
				<div class="row teaser" style="background-color: ${item.value.Color}; height: 150px; overflow: hidden;">
					<div class="col-md-3 hidden-md hidden-sm hidden-xs btn-lg img-circle icono vertical-align">
						<span class="glyphicon glyphicon-${fn:toLowerCase(item.value.Icon.stringValue)}"></span>
					</div>
					<div class="col-md-9 texto">
						<div class="elemento_movimiento">
							<c:if test="${item.value.Headline.isSet}">
							<div class="headline hidden-xs">
								<c:if test="${item.value.Link.isSet}"><a href="<cms:link>${item.value.Link}</cms:link>"></c:if>
								<h4 class="text-center" ${item.rdfa.Headline}>${item.value.Headline}</h4>
								<c:if test="${item.value.Link.isSet}"></a></c:if>
							</div>
							</c:if>
							<div class="content">
								<div class="numeros_elemento_movimiento" ${item.rdfa.Text}>
									<span id="numero${item.index}" class="numero">${item.value.Number}</span>
									<c:if test="${item.value.Unit.isSet}">
										<span class="unidad">${item.value.Unit}</span>
									</c:if>
								</div>
								<div class="texto text-right">${item.value.Text}</div>
							</div>
							<script>
								var numAnim${item.index} = new CountUp("numero${item.index}", 0, ${item.value.Number}, 0, 10, {
									useEasing: true, 
									useGrouping: false, 
								});
								if (!numAnim${item.index}.error) {
									numAnim${item.index}.start();
								} else {
									console.error(numAnim${item.index}.error);
								}
							</script>

						</div>
					</div>
				</div>
				
			</div>
		</c:forEach>	
	</div>
</div>
</cms:formatter>
</cms:bundle>