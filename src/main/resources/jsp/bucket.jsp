<%@ page contentType="text/html;charset=utf-8" %>
<%@taglib prefix="f" uri="/WEB-INF/tld/bucket.tld" %>
<html>
    <head>
        <title>Корзина</title>
        <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
    </head>
    <body>
    <h3>Корзина</h3>
        ${f:tableGenerator(bucket.bucketList)}
    <br>
    <form name="order" action="order.jsp">
        <input type="submit" value="Заказать товары">
    </form>
    </body>
</html>