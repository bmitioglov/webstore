package com.javaweb.DAO;

import com.javaweb.entities.Order;
import com.javaweb.util.HibernateUtil;
import org.hibernate.Session;

import javax.swing.*;
import java.sql.SQLException;
import java.util.List;

public interface OrderDAO {
    public void addOrder(Order order) throws SQLException;
    public List<Order> getAllOrders() throws SQLException;
}
