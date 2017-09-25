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
        <form:form action="#" method="post" commandName="product">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control" />
        </div>
        </form:form>
        <%@include file="/WEB-INF/views/template/footer.jsp"%>
