<%@page taglibs="c,cms,fn" %> 
<c:set var="navStartLevel">1</c:set>
<c:set var="navStartFolder" value="/" />
<div class="col-md-12 hidden-sm hidden-xs" >
	<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel}" var="nav"/>
	<ul>		
		<c:forEach items="${nav.items}" var="elem">
			<li <c:choose><c:when test="${fn:startsWith(cms.requestContext.uri, elem.resourceName)}">class="active"</c:when><c:otherwise>class=""</c:otherwise></c:choose> >
			<a href="<cms:link>${elem.resourceName}</cms:link>">${elem.navText}</a>
			</li>
		</c:forEach>
	</ul>
</div>
<div class="col-sm-12 hidden-md hidden-lg hidden-xs" style="margin-top: 3px;">
	<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel}" var="nav"/>
	<span class="text-center">
		<select class="nav_horizontal_movil">
			<option value="">Selecciona un elemento</option>
			<c:forEach items="${nav.items}" var="elem">
			<option value="<cms:link>${elem.resourceName}</cms:link>" style="width: 100%;" <c:if test="${fn:startsWith(cms.requestContext.uri, elem.resourceName)}">select="selected"</c:if>>${elem.navText}</option>
			</c:forEach>
		</select>
	</span>	
</div>
<div class="col-xs-12 hidden-md hidden-lg hidden-sm" style="margin-top: 3px;">
	<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel}" var="nav"/>
	<span class="text-center">
		<select class="nav_horizontal_movil">
			<option value="">Selecciona un elemento</option>
			<c:forEach items="${nav.items}" var="elem">
			<option value="<cms:link>${elem.resourceName}</cms:link>" style="width: 100%;" <c:if test="${fn:startsWith(cms.requestContext.uri, elem.resourceName)}">select="selected"</c:if>>${elem.navText}</option>
			</c:forEach>
		</select>
	</span>	
</div>
<script>
	$(".nav_horizontal_movil").on("change", function() {
		var url = $(this).val();
		if (url) {
			window.location = $(this).val();
		}
	});
</script>