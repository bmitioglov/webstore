package com.javaweb.DAO;


import com.javaweb.entities.Order;
import com.javaweb.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    public void addOrder(Order order) throws SQLException {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(order);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    @Override
    public List<Order> getAllOrders() throws SQLException {
        Session session = null;
        List<Order> studs = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            studs = session.createCriteria(Order.class).list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return studs;
    }

    @Override
    public int getOrderId(Order order) throws SQLException {
        Session session = null;
        List<Order> resultObj = null;
        int id = 0;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery("from Order where id = " +
                    "(select MAX(id) from Order where userName = :username)");
            query.setParameter("username", order.getUserName());
            resultObj = query.list();
            return resultObj.get(0).getId();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return id;
    }
}
