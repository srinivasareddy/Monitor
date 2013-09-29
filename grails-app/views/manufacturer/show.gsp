
<%@ page import="monitor.Manufacturer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-manufacturer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:render template="/layouts/homebutton"/></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-manufacturer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list manufacturer">
			
				<g:if test="${manufacturerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="manufacturer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${manufacturerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manufacturerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="manufacturer.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${manufacturerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manufacturerInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="manufacturer.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${manufacturerInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manufacturerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="manufacturer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${manufacturerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manufacturerInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="manufacturer.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${manufacturerInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manufacturerInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="manufacturer.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${manufacturerInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${manufacturerInstance?.id}" />
					<g:link class="edit" action="edit" id="${manufacturerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
