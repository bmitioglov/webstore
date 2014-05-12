<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>Корзина</title>
    <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
</head>
<body>
<h3>Заказ</h3>
<c:set var="status" value="Производится заказ"/>
<h5>Выберите магазин пожалуйста</h5>
<form action="orderprocessing.jsp" method="POST" target="_blank">
    <input type="checkbox"  name="bolshoy"/>Большой пр., 32<br>
    <input type="checkbox" name="krasn"/>Красносельская ул., 16<br>
    <input type="checkbox" name="kamen" />Каменноостровский, 22<br>
    <input type="submit" value="Выбрать" />
</form>



</body>
</html>