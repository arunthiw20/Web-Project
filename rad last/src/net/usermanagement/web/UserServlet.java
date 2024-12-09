package net.usermanagement.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.usermanagement.dao.UserDAO;
import net.usermanagement.model.Cart;
import net.usermanagement.model.Item;
import net.usermanagement.model.User;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

    public UserServlet() {
        this.userDAO = new UserDAO();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();

        try {
        	switch (action) {
            case "/":
                homePage(request, response);
                break;
            case "/signup":
                signUpPage(request, response);
                break;
            case "/add":
                insertUser(request, response);
                break;  // Add this break statement
            case "/login-page":
                loginPage(request, response);
                break;
            case "/alogin-page":
                adminLoginPage(request, response);
                break;
            case "/login":
                login(request, response);
                break;
            case "/login-admin":
                adminLogin(request, response);
                break;
            case "/keyboard":
                keyboard(request, response);
                break;
            case "/purcussion":
                purcussion(request, response);
                break;
            case "/string":
                string(request, response);
                break;
            case "/addtocart":
                addToCart(request, response);
                break;
            case "/getcart":
                getCart(request, response);
                break;
            case "/logout":
                logOut(request, response);
                break;
            case "/remove":
                removeCartItem(request, response);
                break;  
            case "/checkoutPage":
                checkoutPage(request, response);
                break;  
            default:
                break;
        }

        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");   

        Cart userCart = new Cart();
        User newUser = new User(firstName, lastName, email, password, "user");
        userDAO.signUp(newUser);

        response.sendRedirect("keyboards.jsp");
    }
	
	private void signUpPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
        dispatcher.forward(request, response);
    }
	
	private void loginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }
	
	private void adminLoginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login-admin.jsp");
        dispatcher.forward(request, response);
    }
	
	private void homePage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("home-page.jsp");
        dispatcher.forward(request, response);
    }
	
	private void keyboard(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("keyboards.jsp");
        dispatcher.forward(request, response);
    }
	
	private void purcussion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("purcussion.jsp");
        dispatcher.forward(request, response);
    }
	
	
	
	private void string(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("string.jsp");
        dispatcher.forward(request, response);
    }
	
	
	private void checkoutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    double totalPrice = Double.parseDouble(request.getParameter("totalPrice")); // Get the total price from the request parameter
	    
	    request.setAttribute("totalPrice", totalPrice); // Set the total price as an attribute in the request
	    RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
	    dispatcher.forward(request, response);
	}

	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Call the DAO to get the user based on email and password
        User user = userDAO.getUserByEmailAndPassword(email, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect to the user's dashboard or homepage
            response.sendRedirect("keyboards.jsp"); // Change this to the appropriate URL
        } else {
            // Invalid login
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
	
	protected void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Call the DAO to get the user based on email and password
        User user = userDAO.getUserByEmailAndPassword(email, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect to the user's dashboard or homepage
            response.sendRedirect("/real-estate-management-system/list"); // Change this to the appropriate URL
        } else {
            // Invalid login
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/login-admin.jsp").forward(request, response);
        }
    }
	
	protected void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemIdParam = request.getParameter("item_id");
        String quantityParam = request.getParameter("quantity");
        String name = request.getParameter("name");
        String priceParam = request.getParameter("price");

        int itemId = Integer.parseInt(itemIdParam);
        int quantity = Integer.parseInt(quantityParam);
        double price = Double.parseDouble(priceParam);

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            
                userDAO.addToCart(user, itemId, quantity, name, price);
                response.sendRedirect("/MU_Shop/getcart"); // Redirect back to shopping page
             
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login page if user is not logged in
        }
    }
	
	protected void getCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
	        User user = (User) session.getAttribute("user");

	        if (user != null) {
	            int userId = user.getId();
	            List<Item> cartItems = userDAO.getItemsInCartForUser(userId);

	            request.setAttribute("cartItems", cartItems);
	            request.getRequestDispatcher("cart.jsp").forward(request, response);
	        } else {
	            response.sendRedirect("login.jsp"); // Redirect to login if not logged in
	        }
    }
	
	
	protected void logOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	          
	        HttpSession session = request.getSession();
	        session.invalidate(); // Invalidate the session

	        // Redirect to the login page
	        response.sendRedirect("login.jsp");
	    
	}

	
	protected void removeCartItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String itemIdParam = request.getParameter("item_id");
	    int itemId = Integer.parseInt(itemIdParam);

	    HttpSession session = request.getSession();
	    User user = (User) session.getAttribute("user");
	    
	 

	   if (user != null) {
	        userDAO.removeCartItem(user, itemId);
	        response.sendRedirect("/MU_Shop/getcart"); // Redirect back to the cart page
	    } else {
	        response.sendRedirect("login.jsp"); // Redirect to login page if user is not logged in
	    }
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
