<%@include file="includes/header.jsp" %>
	<div class="content-container">
		<div class="list-container-small">
			<div class="thumbnail">
				<div class="caption">
					<p><span class="bold">Name:</span> ${customer.firstName} ${customer.lastName}</p>
					<p><span class="bold">Email:</span> ${customer.email}</p>
					<p><span class="bold">User:</span> ${customer.user.username}</p>
					<p><span class="bold">Address:</span> ${customer.address.street} ${customer.address.city}</p>
					<p>${customer.address.state}, ${customer.address.zipCode}</p>
				</div>
			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
