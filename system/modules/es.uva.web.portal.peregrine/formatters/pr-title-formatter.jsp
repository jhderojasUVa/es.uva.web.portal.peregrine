<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:bundle basename="es.uva.web.portal.peregrine.titulo">
<cms:formatter var="content">
	<div>
		<h1 ${content.rdfa.Title}>${content.value.Title}</h1>
	</div>
</cms:formatter>
</cms:bundle>