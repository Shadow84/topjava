<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<jsp:include page="fragments/bodyHeader.jsp"/>
<section>
    <h4><a href="/topjava/"><fmt:message key="app.homepage"/></a></h4>
    <h3><fmt:message key="meal.title"/></h3>
    <hr>
    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.UserMeal" scope="request"/>
    <form method="post" action="meals">
        <input type="hidden" name="id" value="${meal.id}">
        <dl>
            <dt><fmt:message key="meal.dateTime"/></dt>
            <dd><input type="datetime-local" value="${meal.dateTime}" name="dateTime"></dd>
        </dl>
        <dl>
            <dt><fmt:message key="meal.description"/></dt>
            <dd><input type="text" value="${meal.description}" size=40 name="description"></dd>
        </dl>
        <dl>
            <dt><fmt:message key="meal.calories"/></dt>
            <dd><input type="number" value="${meal.calories}" name="calories"></dd>
        </dl>
        <button type="submit"><fmt:message key="meal.save"/></button>
        <button onclick="window.history.back()"><fmt:message key="meal.cancel"/></button>
    </form>
</section>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
