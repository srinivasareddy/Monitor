
<%@ page import="monitor.MachineFeed" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'machineFeed.label', default: 'MachineFeed')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-machineFeed" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			  <div class="left"><h3> Machine Feeds </h3> </div>
			  <div class="right">
			  <ul>
			  <li><g:link controller="Machine" action="list"> Machines </g:link></li>
			  <li><g:link controller="User" action="list" > Users </g:link></li>
			  </ul>
			  </div>			 
			  <div class="clear-both"></div>
		</div>
		<div id="list-machineFeed" class="content scaffold-list" role="main">
			<%-- <h1><g:message code="default.list.label" args="[entityName]" /></h1> --%>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table width="50%">
				<thead>
					<tr>
					
						<th><g:message code="machineFeed.machine.label" default="Machine" /></th>
					
						<g:sortableColumn property="currentLocation" title="${message(code: 'machineFeed.currentGpsX.label', default: 'Current Location')}" />
					
						<g:sortableColumn property="feedDate" title="${message(code: 'machineFeed.feedDate.label', default: 'Feed Date')}" />
						
						<g:sortableColumn property="currentReading" title="${message(code: 'machineFeed.currentReading.label', default: 'Current Reading')}" />
						
						<g:sortableColumn property="sessionStart" title="${message(code: 'machineFeed.sessionStart.label', default: 'Session Start')}" />
						
						<g:sortableColumn property="sessionReading" title="${message(code: 'machineFeed.sessionReading.label', default: 'Session Reading')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${machineFeedInstanceList}" status="i" var="machineFeedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="machine" action="show" id="${machineFeedInstance.machine.machineId}">${fieldValue(bean: machineFeedInstance, field: "machine")}</g:link></td>

						<td><g:if test="${fieldValue(bean: machineFeedInstance, field: "currentGpsX")}" >
						 ${fieldValue(bean: machineFeedInstance, field: "currentGpsX")},${fieldValue(bean: machineFeedInstance, field: "currentGpsY")}</g:if></td>
					
						<td><g:formatDate date="${machineFeedInstance.feedDate}" /></td>

						<td>${fieldValue(bean: machineFeedInstance, field: "currentReading")}</td>
						
						<td><g:formatDate date="${machineFeedInstance.sessionStart}" /></td>
						
						<td>${fieldValue(bean: machineFeedInstance, field: "sessionReading")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${machineFeedInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
