<%--
  Created by IntelliJ IDEA.
  User: panha
  Date: 9/25/2017
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin Page</h1>
            <p class="lead">For admin use only</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Product Inventory </a>
        </h3>

        <p>Here you can view, update and delte product from inventory</p>
        <!-- FOOTER -->

        <%@include file="/WEB-INF/views/template/footer.jsp"%>

