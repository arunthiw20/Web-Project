package net.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.usermanagement.model.Cart;
import net.usermanagement.model.Item;
import net.usermanagement.model.User;

public class UserDAO {

    String jdbcUrl = "jdbc:mysql://localhost:3306/mushop?useSSL=false";
    String username = "root";
    String password = "password";

    private static final String SIGNUP = "INSERT INTO User" +
            "  (firstName, lastName, email, password, role ) VALUES "
            + " (?, ?, ?, ?, ?);";
    private static final String LOGIN = "SELECT * FROM User WHERE email = ? AND password = ?";
    
    public UserDAO() {
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

    // Insert a user
    public void signUp(User user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SIGNUP)) {
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getRole());  

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User getUserByEmailAndPassword(String email, String password) {
        String query = LOGIN;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString("lastName");
                String role = resultSet.getString("role");
                Cart cart = fetchCartForUser(connection, id);

                // Construct and return a User object
                return new User(id, firstName, lastName, email, password, role, cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // User not found
    }

    private Cart fetchCartForUser(Connection connection, int userId) throws SQLException {
        String GET_CART = "SELECT * FROM Cart WHERE userId = ?";
        String GET_ITEMS_FOR_CART = "SELECT i.id, i.name, i.price, ci.quantity FROM CartItem ci INNER JOIN Item i ON ci.itemId = i.id WHERE ci.cartId = ?";

        try (PreparedStatement cartStatement = connection.prepareStatement(GET_CART)) {
            cartStatement.setInt(1, userId);
            try (ResultSet cartResultSet = cartStatement.executeQuery()) {
                if (cartResultSet.next()) {
                    int cartId = cartResultSet.getInt("id");

                    try (PreparedStatement itemsStatement = connection.prepareStatement(GET_ITEMS_FOR_CART)) {
                        itemsStatement.setInt(1, cartId);
                        try (ResultSet itemsResultSet = itemsStatement.executeQuery()) {
                            List<Item> items = new ArrayList<>();
                            while (itemsResultSet.next()) {
                                int itemId = itemsResultSet.getInt("id");
                                String itemName = itemsResultSet.getString("name");
                                double itemPrice = itemsResultSet.getDouble("price");
                                int itemQuantity = itemsResultSet.getInt("quantity");

                                Item item = new Item(itemId, itemName, itemPrice, itemQuantity);
                                items.add(item);
                            }

                            return new Cart(cartId, items);
                        }
                    }
                }
            }
        }

        return null; // Cart not found
    }

    public void addToCart(User user, int itemId, int quantity, String name, double price) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            Cart cart = user.getCart();
            int cartId = user.getId();

            // Insert the item into cart_item table
            String insertQuery = "INSERT INTO CartItem (cartId, itemId, quantity, name, price) VALUES (?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setInt(1, cartId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.setInt(3, quantity);
            preparedStatement.setString(4, name);
            preparedStatement.setDouble(5, price);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources here
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    
    public List<Item> getItemsInCartForUser(int userId) {
        List<Item> items = new ArrayList<>();

        String query = "SELECT id, name, price, quantity FROM cartitem WHERE cartId =? ";
                     

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int itemId = resultSet.getInt("id");
                    String itemName = resultSet.getString("name");
                    double itemPrice = resultSet.getDouble("price");
                    int itemQuantity = resultSet.getInt("quantity");
                    
                    Item item = new Item(itemId, itemName, itemPrice, itemQuantity);
                    items.add(item);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }
    
    public void removeCartItem(User user, int itemId) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            int cartId = user.getId(); // Assuming cartId is the same as user id

            // Delete the cart item from cart_item table
            String deleteQuery = "DELETE FROM CartItem WHERE cartId = ? AND itemId = ?";
            
            preparedStatement = connection.prepareStatement(deleteQuery);
            preparedStatement.setInt(1, cartId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources here
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    
   


}
