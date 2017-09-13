<%--
  Created by IntelliJ IDEA.
  User: panha
  Date: 9/13/2017
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <table>
        <thead>
            <th>Product Name</th>
            <th>Product Description</th>
            <th>Product Price</th>
            <th>Condition</th>
            <th>Price</th>
        </thead>
        <tr>
            <td>${product.productName}</td>
            <td>${product.productDescription}</td>
            <td>${product.productPrice}</td>
            <td>${product.productCondition}</td>
            <td>${product.productPrice}</td>
        </tr>
    </table>
</body>
</html>
