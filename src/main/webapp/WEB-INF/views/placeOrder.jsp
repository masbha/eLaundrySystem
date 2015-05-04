<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="includes/header.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/order.js"></script>
	<div class="content-container">
	<div class="list-container-medium">
		<h3>Place an Order</h3>
		<table>
			<tr>
				<td class="align-right"><label for="service">Service: </label></td>
				<td>
					<select id="service" class="input-large" onchange="loadServiceItems(this.value)">
					   <option value="0">--- Select One ---</option>
					   <c:forEach var="service" items="${services}">
					   		<option value="${service.serviceId}">${service.name}</option>
					   </c:forEach>
					</select>						
				</td>
			</tr>
			<tr class="blank-row"><td colspan="2"></td></tr>
			<tr>
				<td class="align-right"><label for="serviceItem">Item: </label></td>
				<td>
					<select id="serviceItem" class="input-large">
					</select>
				</td>
			</tr>
			<tr class="blank-row"><td colspan="2"></td></tr>
			<tr>
				<td class="align-right"><label for="quantity">Quantity: </label></td>
				<td>
					<input type="number" id="quantity" class="input-small" />
				</td>
			</tr>
			<tr class="blank-row"><td colspan="2"></td></tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="Add to List" onclick="addToList()">
				</td>
			</tr>
		</table>
	</div>
	
	<form:form action="placeOrder" modelAttribute="orderDummy" method="post">	
		<div class="list-container-medium">
			<table class="list" id="order-items">
				<tr class="header-row">
					<th>Item</th>
					<th>Service</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
				<tr class="footer-row">
					<td>&nbsp;</td>
					<td>Total</td>
					<td class="qty-total">0</td>
					<td class="price-total">$0.0</td>
				</tr>
			</table><br />
			<form:hidden path="itemList" id="itemList"></form:hidden>
			<input type="submit" id="place-order" value="Place Order">
		</div>
	</form:form>
	</div>
	<%@include file="includes/footer.jsp" %>