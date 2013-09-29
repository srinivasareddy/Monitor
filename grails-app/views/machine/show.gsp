
<%@ page import="monitor.Machine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'machine.label', default: 'Machine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-machine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:render template="/layouts/homebutton"/></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-machine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list machine">
			
				<g:if test="${machineInstance?.machineId}">
				<li class="fieldcontain">
					<span id="machineId-label" class="property-label"><g:message code="machine.machineId.label" default="Machine Id" /></span>
					
						<span class="property-value" aria-labelledby="machineId-label"><g:fieldValue bean="${machineInstance}" field="machineId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="machine.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${machineInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="machine.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${machineInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="machine.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${machineInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.gpsX}">
				<li class="fieldcontain">
					<span id="gpsX-label" class="property-label"><g:message code="machine.gpsX.label" default="Gps X" /></span>
					
						<span class="property-value" aria-labelledby="gpsX-label"><g:fieldValue bean="${machineInstance}" field="gpsX"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.gpsY}">
				<li class="fieldcontain">
					<span id="gpsY-label" class="property-label"><g:message code="machine.gpsY.label" default="Gps Y" /></span>
					
						<span class="property-value" aria-labelledby="gpsY-label"><g:fieldValue bean="${machineInstance}" field="gpsY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.installedDate}">
				<li class="fieldcontain">
					<span id="installedDate-label" class="property-label"><g:message code="machine.installedDate.label" default="Installed Date" /></span>
					
						<span class="property-value" aria-labelledby="installedDate-label"><g:formatDate date="${machineInstance?.installedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.lastActiveOn}">
				<li class="fieldcontain">
					<span id="lastActiveOn-label" class="property-label"><g:message code="machine.lastActiveOn.label" default="Last Active On" /></span>
					
						<span class="property-value" aria-labelledby="lastActiveOn-label"><g:formatDate date="${machineInstance?.lastActiveOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.manufacturer}">
				<li class="fieldcontain">
					<span id="manufacturer-label" class="property-label"><g:message code="machine.manufacturer.label" default="Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="manufacturer-label"><g:link controller="manufacturer" action="show" id="${machineInstance?.manufacturer?.id}">${machineInstance?.manufacturer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.purged}">
				<li class="fieldcontain">
					<span id="purged-label" class="property-label"><g:message code="machine.purged.label" default="Purged" /></span>
					
						<span class="property-value" aria-labelledby="purged-label"><g:formatBoolean boolean="${machineInstance?.purged}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.simNum}">
				<li class="fieldcontain">
					<span id="simNum-label" class="property-label"><g:message code="machine.simNum.label" default="Sim Num" /></span>
					
						<span class="property-value" aria-labelledby="simNum-label"><g:fieldValue bean="${machineInstance}" field="simNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.simProvider}">
				<li class="fieldcontain">
					<span id="simProvider-label" class="property-label"><g:message code="machine.simProvider.label" default="Sim Provider" /></span>
					
						<span class="property-value" aria-labelledby="simProvider-label"><g:fieldValue bean="${machineInstance}" field="simProvider"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="machine.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${machineInstance?.user?.id}">${machineInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${machineInstance?.id}" />
					<g:link class="edit" action="edit" id="${machineInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
