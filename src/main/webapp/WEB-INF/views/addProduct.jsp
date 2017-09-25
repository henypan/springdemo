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

<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add New Product</h1>

            <p class="lead">Add product detail from this page</p>
        </div>
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control" />
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="instrument" />Instrument
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="record" />Record
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="accessory" />Accessory
            </label>
        </div>

        <div>
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-control" />
        </div>

        <div>
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-control" />
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="new" />New
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="used" />Used
            </label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productStatus" id="status" value="active" />Active
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productStatus" id="status" value="inactive" />Inactive
            </label>
        </div>

        <div class="form-group">
            <label for="unit">Unit In Stock</label>
            <form:input path="unitInStock" id="unit" class="form-control" />
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-control" />
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input path="productImage" type="file" class="form:input-large" />
        </div>
        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>
        <%@include file="/WEB-INF/views/template/footer.jsp"%>
