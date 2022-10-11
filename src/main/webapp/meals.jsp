<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="2">
    <comment>Add Meal</comment>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th></th>
        <th></th>
    </tr>
    <jsp:useBean id="mealsTo" scope="request" type="java.util.List"/>
    <c:forEach items="${mealsTo}" var="mealTo">
        <tr>
            <td>
                <%@taglib uri="http://util.com/functions" prefix="f" %>
                <c:out value="${f:formatLocalDateTime(mealTo.getDateTime(), 'dd.MM.yyyy HH:mm')}"/>
            </td>
            <td>
                <c:out value="${mealTo.getDescription()}"/>
            </td>
            <td style="color: ${mealTo.isExcess() ? 'green' : 'red'}">
                <c:out value="${mealTo.getCalories()}"/>
            </td>
            <td>Update</td>
            <td>Delete</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>