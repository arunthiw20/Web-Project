package net.ordermanagement.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ordermanagement.dao.OrderDAO;
import net.ordermanagement.model.Order;
import net.usermanagement.dao.UserDAO;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDAO orderDAO;

    public OrderServlet() {
        this.orderDAO = new OrderDAO();
    }
    /**
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
            case "/checkout":
                checkout(request, response);
                break;
            
            default:
                break;
        }

        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	protected void checkout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String nic = request.getParameter("nic");
            
            String bankSlip = request.getParameter("bankSlip");

            Order order = new Order(customerId, totalPrice, name, email, address, nic, bankSlip);
            orderDAO.insertOrder(order);
            response.getWriter().write("success");

            response.sendRedirect("/MU_Shop/keyboard"); // Redirect to order confirmation page
        } catch (Exception e) {
            e.printStackTrace();
            // Handle error and display appropriate message
            response.sendRedirect("errorPage.jsp");
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
