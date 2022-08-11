package com.dollarsbank.servelts;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dollarsbank.controller.DollarsBankController;
import com.dollarsbank.model.Account;

/**
 * Servlet implementation class LoginServelt
 */
@WebServlet("/register")
public class RegistrationServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	private static DollarsBankController dBController = new DollarsBankController();
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String re_pass = request.getParameter("re_pass");
		String initialDAStr = request.getParameter("initialDA");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
		try {
//		if(name.isEmpty() ||address.isEmpty() ||contact.isEmpty() ||uname.isEmpty() ||pass.isEmpty() ||re_pass.isEmpty() || initialDAStr.isEmpty())
//			request.setAttribute("status", "empty");
//		else {
			Double initialDA = Double.valueOf(initialDAStr);
			
			if(!pass.equals(re_pass)) {
				request.setAttribute("status", "mismatch");
			}
			else if(pass.length() > 20 || pass.length() < 8) //  || pass.matches(" ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>])$"))
			{
				request.setAttribute("status", "badPass");
			}
			else if(contact.length() > 11 || contact.length() < 10  || !contact.matches("[0-9]+"))
			{
				request.setAttribute("status", "notPhoneNum");
			}
			else{
				Account Acc = dBController.getAccountInfo(name,address,contact,uname,pass,initialDA);
				System.out.println("THIS IS THE USERNAME: " + Acc.getUsername());
				request.setAttribute("status","success");
				 
			}
		//}
		
		
		} catch (NumberFormatException e) {
			request.setAttribute("status", "error");
		} catch (NullPointerException e) {
			request.setAttribute("status", "error");
		} finally {
			dispatcher.forward(request, response);
		}
		
		
		
		
		
	}

}
