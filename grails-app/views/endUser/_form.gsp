<%@ page import="org.grails.EndUser" %>



<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="endUser.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${endUserInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="endUser.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" value="${endUserInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="endUser.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${endUserInstance?.password}"/>
</div>

