package net.ordermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.ordermanagement.model.Order;

public class OrderDAO {
    String jdbcUrl = "jdbc:mysql://localhost:3306/mushop?useSSL=false";
    String username = "root";
    String password = "password";

    public OrderDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, username, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertOrder(Order order) {
        String insertQuery = "INSERT INTO orders (customer_id, total_price, name, email, address, nic, bank_slip) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {

            preparedStatement.setInt(1, order.getCustomerId());
            preparedStatement.setDouble(2, order.getTotalPrice());
            preparedStatement.setString(3, order.getName());
            preparedStatement.setString(4, order.getEmail());
            preparedStatement.setString(5, order.getAddress());
            preparedStatement.setString(6, order.getNic());
            preparedStatement.setString(7, order.getBankSlip());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
