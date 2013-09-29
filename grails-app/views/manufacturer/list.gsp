
<%@ page import="monitor.Manufacturer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-manufacturer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:render template="/layouts/homebutton"/></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-manufacturer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'manufacturer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'manufacturer.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'manufacturer.website.label', default: 'Website')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'manufacturer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'manufacturer.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'manufacturer.phone.label', default: 'Phone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${manufacturerInstanceList}" status="i" var="manufacturerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: manufacturerInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: manufacturerInstance, field: "website")}</td>
					
						<td>${fieldValue(bean: manufacturerInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: manufacturerInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: manufacturerInstance, field: "phone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${manufacturerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
