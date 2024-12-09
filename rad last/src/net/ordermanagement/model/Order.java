package net.ordermanagement.model;

import java.util.Date;

public class Order {
	private int orderId;
    private int customerId;
    private double totalPrice;
    private String name;
    private String email;
    private String address;
    private String nic;
    private Date date;
    private String time;
    private String bankSlip;
    
	public Order(int orderId, int customerId, double totalPrice, String name, String email, String address, String nic,
			Date date, String time, String bankSlip) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.totalPrice = totalPrice;
		this.name = name;
		this.email = email;
		this.address = address;
		this.nic = nic;
		this.date = date;
		this.time = time;
		this.bankSlip = bankSlip;
	}

	public Order(int customerId, double totalPrice, String name, String email, String address, String nic, Date date,
			String time, String bankSlip) {
		super();
		this.customerId = customerId;
		this.totalPrice = totalPrice;
		this.name = name;
		this.email = email;
		this.address = address;
		this.nic = nic;
		this.date = date;
		this.time = time;
		this.bankSlip = bankSlip;
	}

	public Order( int customerId, double totalPrice, String name, String email, String address, String nic,
			String bankSlip) {
		super();
	
		this.customerId = customerId;
		this.totalPrice = totalPrice;
		this.name = name;
		this.email = email;
		this.address = address;
		this.nic = nic;
		this.bankSlip = bankSlip;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getBankSlip() {
		return bankSlip;
	}

	public void setBankSlip(String bankSlip) {
		this.bankSlip = bankSlip;
	}
	
	
    
    
}
