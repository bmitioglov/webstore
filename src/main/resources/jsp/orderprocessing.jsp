<%@ page import="com.javaweb.entities.Order" %>
<%@ page import="com.javaweb.DAO.Factory" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
</head>
<body>
<%
    PrintWriter out2 = response.getWriter();
    Order order = new Order();
    order.setId(123);
    order.setProductId("001");
    order.setStoreName("Bolshoy");

    Factory.getInstance().getOrderDAO().addOrder(order);

    //Выведем всех студентов из бд
    List<Order> orders = Factory.getInstance().getOrderDAO().getAllOrders();
    out2.println("========Все студенты=========");
    for(int i = 0; i < orders.size(); ++i) {
        out2.println("orderId : " + orders.get(i).getId() + ", productId : " + orders.get(i).getProductId() + ",  storeName : " + orders.get(i).getStoreName());
        out2.println("=============================");
    }

//    String redirectURL = "/webstore/jsp/productList.jsp";
//    response.sendRedirect(redirectURL);
%>
Всё ок!
<c:set var="status" value="Все заказы выполнены"/>
<br>
</body>
</html>
