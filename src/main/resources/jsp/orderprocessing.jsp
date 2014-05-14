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

    if (request.getParameter("storeName")==null){
        if (request.getParameter("address")!=null&&request.getParameter("address").equals("1")){
            order.setStoreName("VasilievIslandStore");
        }
        else
        if (request.getParameter("address")!=null&&request.getParameter("address").equals("2")){
            order.setStoreName("MaliyProspStore");
        }
        else
        if (request.getParameter("address")!=null&&request.getParameter("address").equals("3")){
            order.setStoreName("UlitsaPopovaStore");
        }
    }
    else
    {
        order.setStoreName(request.getParameter("storeName"));
    }
    String userName = request.getUserPrincipal().getName();
    order.setUserName(userName);
    int orderId = 0;

    try {
        Factory.getInstance().getOrderDAO().addOrder(order);

        orderId = Factory.getInstance().getOrderDAO().getOrderId(order);

//        //Выведем все заказы из бд
//        List<Order> orders = Factory.getInstance().getOrderDAO().getAllOrders();
//        out2.println("========Все заказы=========<br>");
//        for(int i = 0; i < orders.size(); ++i) {
//            out2.println("orderId : " + orders.get(i).getId() + ", productId : " + orders.get(i).getProductId() +
//                    ",  storeName : " + orders.get(i).getStoreName()+"<br>");
//            out2.println("=============================<br>");
//        }

    } catch (SQLException e) {
        out2.println("Что то пошло не так");
    }

//    String redirectURL = "/webstore/jsp/productList.jsp";
//    response.sendRedirect(redirectURL);
%>
<h4>Ваш заказ создан. Спасибо за покупку!</h4>
<h4>Номер заказа = <%=orderId%></h4>
<a href="/webstore/jsp/productList.jsp">Вернуться</a>






<c:set var="status" value="Все заказы выполнены"/>
<br>
</body>
</html>
