package com.javaweb.DAO;


public class Factory {

    private static OrderDAO studentDAO = null;
    private static Factory instance = null;

    public static synchronized Factory getInstance(){
        if (instance == null){
            instance = new Factory();
        }
        return instance;
    }

    public OrderDAO getOrderDAO(){
        if (studentDAO == null){
            studentDAO = new OrderDAOImpl();
        }
        return studentDAO;
    }
}