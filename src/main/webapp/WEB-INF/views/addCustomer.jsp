<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<%@include file="includes/header.jsp" %>

	<div class="content-container">
		<div class="list-container-medium">
			<form:form modelAttribute="newCustomer" class="form-horizontal">
				<h3>Add new Customer</h3>				
				<table>
					<tr>
						<td><spring:message code="addCustomer.form.firstName.label"/></td>
						<td><form:input path="firstName" type="text" /></td>
						<td><form:errors path="firstName" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.middleName.label"/></td>
						<td><form:input path="middleName" type="text" /></td>
						<td><form:errors path="middleName" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.lastName.label"/></td>
						<td><form:input path="lastName" type="text" /></td>
						<td><form:errors path="lastName" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.dateOfBirth.label"/></td>
						<td><form:input path="dateOfBirth" type="text" placeholder="MM-DD-YYYY"/></td>
						<td><form:errors path="dateOfBirth" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.street.label"/></td>
						<td><form:input path="address.street" type="text" /></td>
						<td><form:errors path="address.street" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.city.label"/></td>
						<td><form:input path="address.city" type="text" /></td>
						<td><form:errors path="address.city" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.state.label"/></td>
						<td><form:input path="address.state" type="text" /></td>
						<td><form:errors path="address.state" cssClass="errorMessage"/></td>
					</tr>
					
					<tr>
						<td><spring:message code="addCustomer.form.zipCode.label"/></td>
						<td><form:input path="address.zipCode" type="text" /></td>
						<td><form:errors path="address.zipCode" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.phone.label"/></td>
						<td><form:input path="phone" type="text" placeholder="222-222-2222"/></td>
						<td><form:errors path="phone" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.email.label"/></td>
						<td><form:input path="email" type="text" /></td>
						<td><form:errors path="email" cssClass="errorMessage"/></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.gender.label"/></td>
						<td><form:radiobutton path="gender" value="M"/><spring:message code="addCustomer.form.gender.male.label"/> <form:radiobutton path="gender" value="F"/><spring:message code="addCustomer.form.gender.female.label"/></td>
						<td></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.user.username.label"/></td>
						<td><form:input path="user.username" type="text" /></td>
						<td><form:errors path="user.username" cssClass="errorMessage"/><span class="errorMessage">${usernameerror}</span></td>
					</tr>
					<tr>
						<td><spring:message code="addCustomer.form.user.password.label"/></td>
						<td><form:input path="user.password" type="password" /></td>
						<td><form:errors path="user.password" cssClass="errorMessage"/></td>
					</tr>
				</table>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
			</div>
		</form:form>
	</div>
	<%@include file="includes/footer.jsp" %>
