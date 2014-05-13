<%@ page import="com.javaweb.entities.Order" %>
<%@ page import="com.javaweb.DAO.Factory" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
</head>
<body>
<%
    PrintWriter out2 = response.getWriter();
    Order order = new Order();
    order.setProductId("456");
    order.setStoreName("Bolshoy");

    try {
        Factory.getInstance().getOrderDAO().addOrder(order);

        //Выведем все заказы из бд
        List<Order> orders = Factory.getInstance().getOrderDAO().getAllOrders();
        out2.println("========Все заказы=========<br>");
        for(int i = 0; i < orders.size(); ++i) {
            out2.println("orderId : " + orders.get(i).getId() + ", productId : " + orders.get(i).getProductId() +
                    ",  storeName : " + orders.get(i).getStoreName()+"<br>");
            out2.println("=============================<br>");
        }
    } catch (SQLException e) {
        out2.println("Что то пошло не так");
    }

//    String redirectURL = "/webstore/jsp/productList.jsp";
//    response.sendRedirect(redirectURL);
%>
<c:set var="status" value="Все заказы выполнены"/>
<br>
</body>
</html>
