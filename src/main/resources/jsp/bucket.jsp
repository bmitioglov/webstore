<%@ page contentType="text/html;charset=utf-8" %>
<%@taglib prefix="f" uri="/WEB-INF/tld/bucket.tld" %>
<html>
    <head>
        <title>Корзина</title>
        <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
    </head>
    <body>
    <h3>Корзина</h3>

    <form name="order" action="order.jsp">
        ${f:tableGenerator(bucket.bucketList)}
        <br>
        <input type="submit" value="Заказать товары">
    </form>
    </body>
</html>