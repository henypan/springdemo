<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory</h1>

            <p class="lead">This is the inventory list for the admin.</p>
        </div>

        <table class="table table-striped table-hover">
            <theader>
                <tr class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </theader>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="#" alt="image"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}"/>">
                        <span class="glyphicon glyphicon-info-sign"></span>
                    </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <!-- FOOTER -->
        <a class="btn btn-primary" href="<spring:url value="/admin/productInventory/addProduct" />">Add Product</a>
        <%@include file="/WEB-INF/views/template/footer.jsp"%>
