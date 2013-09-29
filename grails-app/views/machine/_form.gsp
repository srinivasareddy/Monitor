<%@ page import="monitor.Machine" %>



<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'machineId', 'error')} required">
	<label for="machineId">
		<g:message code="machine.machineId.label" default="Machine Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="machineId" required="" value="${machineInstance?.machineId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="machine.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${machineInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="machine.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${machineInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="machine.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${machineInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'gpsX', 'error')} required">
	<label for="gpsX">
		<g:message code="machine.gpsX.label" default="Gps X" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gpsX" value="${fieldValue(bean: machineInstance, field: 'gpsX')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'gpsY', 'error')} required">
	<label for="gpsY">
		<g:message code="machine.gpsY.label" default="Gps Y" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gpsY" value="${fieldValue(bean: machineInstance, field: 'gpsY')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'installedDate', 'error')} required">
	<label for="installedDate">
		<g:message code="machine.installedDate.label" default="Installed Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="installedDate" precision="day"  value="${machineInstance?.installedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'lastActiveOn', 'error')} required">
	<label for="lastActiveOn">
		<g:message code="machine.lastActiveOn.label" default="Last Active On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastActiveOn" precision="day"  value="${machineInstance?.lastActiveOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="machine.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="manufacturer" name="manufacturer.id" from="${monitor.Manufacturer.list()}" optionKey="id" required="" value="${machineInstance?.manufacturer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'purged', 'error')} ">
	<label for="purged">
		<g:message code="machine.purged.label" default="Purged" />
		
	</label>
	<g:checkBox name="purged" value="${machineInstance?.purged}" />
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'simNum', 'error')} ">
	<label for="simNum">
		<g:message code="machine.simNum.label" default="Sim Num" />
		
	</label>
	<g:textField name="simNum" value="${machineInstance?.simNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'simProvider', 'error')} ">
	<label for="simProvider">
		<g:message code="machine.simProvider.label" default="Sim Provider" />
		
	</label>
	<g:textField name="simProvider" value="${machineInstance?.simProvider}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: machineInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="machine.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${monitor.User.list()}" optionKey="id" required="" value="${machineInstance?.user?.id}" class="many-to-one"/>
</div>

