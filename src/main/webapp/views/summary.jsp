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
    <title>Orders</title>>
</head>
<body class="mainLayout">
<div class="background">
    <h1>Сводная информация</h1>
    <table class="table-style">
        <tr>
            <th>Номер заказа</th>
            <th>Количество</th>
            <th>Сумма</th>
        </tr>
        <c:forEach items="${orderList}" var="order">
            <tr>
                <td>${order.number}</td>
                <td>${order.quantity}</td>
                <td>
                        ${sum.get(order.id)}
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="3">Общее количество: ${totalCount}, общаяя сумма: ${totalSum}</td>
        </tr>
    </table>
</div>
</body>
</html>
