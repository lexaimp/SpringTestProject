<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <title>Products</title>>
</head>
<body class="mainLayout">
<div class="background">
    <h1>Список товаров</h1>
    <form class="form-style" method="get" action="${pageContext.request.contextPath}/search">
        <label>
            <input type="text" name="keyword"/>
            <button type="submit">Поиск</button>
        </label>
    </form>
    <table class="table-style">
        <tr>
            <th>Наименование товара</th>
            <th>Цена</th>
        </tr>
        <c:forEach items="${listProducts}" var="product">
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/summary?id=${product.id}">${product.name}</a>
                </td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
