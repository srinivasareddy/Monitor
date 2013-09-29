
<%@ page import="monitor.Machine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'machine.label', default: 'Machine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-machine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:render template="/layouts/homebutton"/></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-machine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="machineId" title="${message(code: 'machine.machineId.label', default: 'Machine Id')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'machine.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'machine.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="creationDate" title="${message(code: 'machine.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="gpsX" title="${message(code: 'machine.gpsX.label', default: 'Gps X')}" />
					
						<g:sortableColumn property="gpsY" title="${message(code: 'machine.gpsY.label', default: 'Gps Y')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${machineInstanceList}" status="i" var="machineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${machineInstance.id}">${fieldValue(bean: machineInstance, field: "machineId")}</g:link></td>
					
						<td><g:formatBoolean boolean="${machineInstance.active}" /></td>
					
						<td>${fieldValue(bean: machineInstance, field: "code")}</td>
					
						<td><g:formatDate date="${machineInstance.creationDate}" /></td>
					
						<td>${fieldValue(bean: machineInstance, field: "gpsX")}</td>
					
						<td>${fieldValue(bean: machineInstance, field: "gpsY")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${machineInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
