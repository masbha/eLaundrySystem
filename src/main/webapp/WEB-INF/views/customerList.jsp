<%@include file="includes/header.jsp" %>
	<div class="content-container">
		<div class="list-container-large">
			<c:forEach items="${customers}" var="customer">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<p><a href="<c:url value="/customers/detail/?id=${customer.id}"></c:url>" >${customer.firstName} ${customer.lastName}</a></p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
