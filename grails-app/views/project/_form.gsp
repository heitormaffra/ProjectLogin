<%@ page import="org.grails.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="project.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${projectInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'billingType', 'error')} ">
	<label for="billingType">
		<g:message code="project.billingType.label" default="Billing Type" />
		
	</label>
	<g:select name="billingType" from="${projectInstance.constraints.billingType.inList}" value="${projectInstance?.billingType}" valueMessagePrefix="project.billingType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="project.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${org.grails.EndUser.list()}" optionKey="id" required="" value="${projectInstance?.owner?.id}" class="many-to-one"/>
</div>

