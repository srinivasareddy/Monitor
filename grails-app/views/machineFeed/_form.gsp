<%@ page import="monitor.MachineFeed" %>



<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'machine', 'error')} required">
	<label for="machine">
		<g:message code="machineFeed.machine.label" default="Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="machine" name="machine.id" from="${monitor.Machine.list()}" optionKey="id" required="" value="${machineFeedInstance?.machine?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'feedDate', 'error')} required">
	<label for="feedDate">
		<g:message code="machineFeed.feedDate.label" default="Feed Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="feedDate" precision="day"  value="${machineFeedInstance?.feedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="machineFeed.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${machineFeedInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'currentGpsX', 'error')} required">
	<label for="currentGpsX">
		<g:message code="machineFeed.currentGpsX.label" default="Current Gps X" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentGpsX" value="${fieldValue(bean: machineFeedInstance, field: 'currentGpsX')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'currentGpsY', 'error')} required">
	<label for="currentGpsY">
		<g:message code="machineFeed.currentGpsY.label" default="Current Gps Y" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentGpsY" value="${fieldValue(bean: machineFeedInstance, field: 'currentGpsY')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'currentReading', 'error')} required">
	<label for="currentReading">
		<g:message code="machineFeed.currentReading.label" default="Current Reading" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentReading" value="${fieldValue(bean: machineFeedInstance, field: 'currentReading')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'readingUnits', 'error')} ">
	<label for="readingUnits">
		<g:message code="machineFeed.readingUnits.label" default="Reading Units" />
		
	</label>
	<g:textField name="readingUnits" value="${machineFeedInstance?.readingUnits}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'sessionReading', 'error')} required">
	<label for="sessionReading">
		<g:message code="machineFeed.sessionReading.label" default="Session Reading" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sessionReading" value="${fieldValue(bean: machineFeedInstance, field: 'sessionReading')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'sessionStart', 'error')} required">
	<label for="sessionStart">
		<g:message code="machineFeed.sessionStart.label" default="Session Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="sessionStart" precision="day"  value="${machineFeedInstance?.sessionStart}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineFeedInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="machineFeed.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${machineFeedInstance?.state}"/>
</div>

