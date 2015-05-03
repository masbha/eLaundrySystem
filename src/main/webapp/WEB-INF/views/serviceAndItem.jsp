<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="includes/header.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/service.js"></script>
	
	<div class="content-container">
		<div class="list-container-small">
			<table>
				<tr>
					<td class="align-right"><label for="serviceSelect">Select Service: </label></td>
					<td>
						<form:select path="selectedService" id="selectedService" onchange="loadServiceItems(this.value)">
						   <form:option value="0" label="--- Select One ---"></form:option>
						   <form:options items="${services}" itemValue="serviceId" itemLabel="name"></form:options>
						</form:select>
					</td>
				</tr>
			</table><br />
			<h4>Available Service Items</h4>
			<table id="item-table" class="list">
			</table>
		</div>
	</div>
	<%@include file="includes/footer.jsp" %>
	
	<script type="text/javascript">
		$(function(){			
			loadServiceItems(0);
		});
	</script>
</body>
</html>