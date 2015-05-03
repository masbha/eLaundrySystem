<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="includes/header.jsp" %>
	<div class="content-container">
	<form:form action="/eLaundrySystem/orders/changeOrderStatus" modelAttribute="order" method="get">	
		<div class="list-container-medium">
			<form:hidden path="orderId"/>
			<table>
				<tr>
					<td class="align-right"><label for="orderId">Order ID: </label></td>
					<td><form:label path="orderId">${order.orderId} </form:label></td>
				</tr>
				<tr class="blank-row"><td colspan="2"></td></tr>
				<tr>
					<td class="align-right">Customer ID: </td>
					<td>${order.customerId}</td>
				</tr>
				<tr class="blank-row"><td colspan="2"></td></tr>
				<tr>
					<td class="align-right">Order Date: </td>
					<td>${order.orderDate}</td>
				</tr>
				<tr class="blank-row"><td colspan="2"></td></tr>
				<tr>
					<td class="align-right">Expected Delivery: </td>
					<td>${order.expDeliveryDate}</td>
				</tr>
				<tr class="blank-row"><td colspan="2"></td></tr>
				<tr>
					<td class="align-right"><label for="orderStatus">Order Status: </label></td>
					<td>
						<form:select path="orderStatus">
							<form:option value="Placed">Placed</form:option>
							<form:option value="Received">Received</form:option>
							<form:option value="InProcess">In Process</form:option>
							<form:option value="Delivered">Delivered</form:option>
							<form:option value="CashReceived">Cash Received</form:option>
						</form:select>
					</td>
				</tr>
			</table>				
			<h3>Order Items:</h3>
			<table class="list" id="order-items">
				<tr class="header-row">
					<th>Item</th>
					<th>Service</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Total</th>
				</tr>
				<c:forEach var="orderItem" items="${orderItems}">
					<tr>
						<td>${orderItem.itemName}</td>
						<td>${orderItem.serviceName}</td>
						<td>${orderItem.quantity}</td>
						<td>$${orderItem.price}</td>
						<td>$${orderItem.totalPrice}</td>
					</tr>
				</c:forEach>
				<tr class="footer-row">
					<td colspan="2" class="align-right">Total</td>
					<td>${totalItems}</td>
					<td>&nbsp;</td>
					<td>$${totalAmount}</td>
				</tr>
			</table><br />
			<input type="submit" value="Save Changed Status">
		</div>
	</form:form>
	</div>
	<%@include file="includes/footer.jsp" %>