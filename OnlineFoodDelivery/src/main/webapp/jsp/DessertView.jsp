<%@page import="in.co.online.food.delivery.controller.DessertCtl"%>
<%@page import="in.co.online.food.delivery.util.HTMLUtility"%>
<%@page import="java.util.List"%>
<%@page import="in.co.online.food.delivery.util.DataUtility"%>
<%@page import="in.co.online.food.delivery.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dessert</title>
</head>
<body>
<%@ include file="Header.jsp"%>
	<section class="ftco-section contact-section">
	<div class="container mt-5">

		<h2>Dessert</h2>

		<b><font color="red"> <%=ServletUtility.getErrorMessage(request)%></font></b>
		<b><font color="green"> <%=ServletUtility.getSuccessMessage(request)%></font></b>

		<div class="row block-9">
			<div class="col-md-1"></div>
			<div class="col-md-6 ftco-animate">
				<form action="<%=OFDView.DESSERT_CTL%>" method="post" enctype="multipart/form-data"
					class="contact-form">

					<jsp:useBean id="bean"
						class="in.co.online.food.delivery.bean.DessertBean"
						scope="request"></jsp:useBean>

					<input type="hidden" name="id" value="<%=bean.getId()%>"> <input
						type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
					<input type="hidden" name="modifiedBy"
						value="<%=bean.getModifiedBy()%>"> <input type="hidden"
						name="createdDatetime"
						value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
					<input type="hidden" name="modifiedDatetime"
						value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
					<%
						List l = (List) request.getAttribute("restList");
					%>

				
							<div class="form-group">
								<%=HTMLUtility.getList("RestaurantName", String.valueOf(bean.getRestaurantId()), l)%>
								<font color="red"> <%=ServletUtility.getErrorMessage("RestaurantName", request)%></font>
							
						
					</div>
					<div class="form-group">
								<input type="text" name="dessertName" class="form-control"
									value="<%=DataUtility.getStringData(bean.getDessertName())%>"
									placeholder="Enter Dessert Name"> <font color="red">
									<%=ServletUtility.getErrorMessage("dessertName", request)%></font>
							</div>
							
							<div class="row">
						<div class="col-md-6">
						<div class="form-group">
								<input type="text" name="price" class="form-control"
									value="<%=(bean.getFoodPrice()==0)?"":bean.getFoodPrice()%>"
									placeholder="Enter Price"> <font color="red"> <%=ServletUtility.getErrorMessage("price", request)%></font>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="discount" class="form-control"
									value="<%=(bean.getDisscount()==0)?"":bean.getDisscount()%>"
									placeholder="Enter Discount"> <font color="red"> <%=ServletUtility.getErrorMessage("discount", request)%></font>
							</div>
						</div>
					</div>	
							
							<div class="form-group">
								<input type="file" name="image" class="form-control"
									value="<%=DataUtility.getStringData(bean.getImage()) %>"
									placeholder="Select Image"> <font color="red">
									<%=ServletUtility.getErrorMessage("image", request)%></font>
							</div>
							
							
					
					<div class="form-group">
						
						 <textarea name="description" id="" cols="30" rows="5" class="form-control" placeholder="Description"><%=DataUtility.getStringData(bean.getDessertDescription())%></textarea>
						 <font	color="red"> <%=ServletUtility.getErrorMessage("description", request)%></font>
					</div>
					

					<div class="form-group">
						<input type="submit" name="operation"
							class="btn btn-primary py-3 px-5"
							value="<%=DessertCtl.OP_SAVE%>"> <input
							type="submit" name="operation" class="btn btn-primary py-3 px-5"
							value="<%=DessertCtl.OP_RESET%>">
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<%@ include file="Footer.jsp"%>
</body>
</html>