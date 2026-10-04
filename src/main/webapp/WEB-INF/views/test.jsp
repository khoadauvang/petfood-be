<%@ page  contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test JSP</title>
</head>
<body>
    <h1>${message}</h1>

    <ul>
        <c:forEach var="item" items="${items}">
            <li>${item}</li>
        </c:forEach>
    </ul>
</body>
</html>
