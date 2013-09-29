
<%@ page import="monitor.MachineFeed" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'machineFeed.label', default: 'MachineFeed')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-machineFeed" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:render template="/layouts/homebutton"/></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-machineFeed" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list machineFeed">
			
				<g:if test="${machineFeedInstance?.machine}">
				<li class="fieldcontain">
					<span id="machine-label" class="property-label"><g:message code="machineFeed.machine.label" default="Machine" /></span>
					
						<span class="property-value" aria-labelledby="machine-label"><g:link controller="machine" action="show" id="${machineFeedInstance?.machine?.id}">${machineFeedInstance?.machine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.feedDate}">
				<li class="fieldcontain">
					<span id="feedDate-label" class="property-label"><g:message code="machineFeed.feedDate.label" default="Feed Date" /></span>
					
						<span class="property-value" aria-labelledby="feedDate-label"><g:formatDate date="${machineFeedInstance?.feedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="machineFeed.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${machineFeedInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.currentGpsX}">
				<li class="fieldcontain">
					<span id="currentGpsX-label" class="property-label"><g:message code="machineFeed.currentGpsX.label" default="Current Gps X" /></span>
					
						<span class="property-value" aria-labelledby="currentGpsX-label"><g:fieldValue bean="${machineFeedInstance}" field="currentGpsX"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.currentGpsY}">
				<li class="fieldcontain">
					<span id="currentGpsY-label" class="property-label"><g:message code="machineFeed.currentGpsY.label" default="Current Gps Y" /></span>
					
						<span class="property-value" aria-labelledby="currentGpsY-label"><g:fieldValue bean="${machineFeedInstance}" field="currentGpsY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.currentReading}">
				<li class="fieldcontain">
					<span id="currentReading-label" class="property-label"><g:message code="machineFeed.currentReading.label" default="Current Reading" /></span>
					
						<span class="property-value" aria-labelledby="currentReading-label"><g:fieldValue bean="${machineFeedInstance}" field="currentReading"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.readingUnits}">
				<li class="fieldcontain">
					<span id="readingUnits-label" class="property-label"><g:message code="machineFeed.readingUnits.label" default="Reading Units" /></span>
					
						<span class="property-value" aria-labelledby="readingUnits-label"><g:fieldValue bean="${machineFeedInstance}" field="readingUnits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.sessionReading}">
				<li class="fieldcontain">
					<span id="sessionReading-label" class="property-label"><g:message code="machineFeed.sessionReading.label" default="Session Reading" /></span>
					
						<span class="property-value" aria-labelledby="sessionReading-label"><g:fieldValue bean="${machineFeedInstance}" field="sessionReading"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.sessionStart}">
				<li class="fieldcontain">
					<span id="sessionStart-label" class="property-label"><g:message code="machineFeed.sessionStart.label" default="Session Start" /></span>
					
						<span class="property-value" aria-labelledby="sessionStart-label"><g:formatDate date="${machineFeedInstance?.sessionStart}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${machineFeedInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="machineFeed.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${machineFeedInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${machineFeedInstance?.id}" />
					<g:link class="edit" action="edit" id="${machineFeedInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
