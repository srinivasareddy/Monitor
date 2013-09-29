<%@ page import="monitor.Manufacturer" %>



<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="manufacturer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${manufacturerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="manufacturer.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${manufacturerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="manufacturer.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="website" required="" value="${manufacturerInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="manufacturer.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${manufacturerInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="manufacturer.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${manufacturerInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="manufacturer.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${manufacturerInstance?.phone}"/>
</div>

