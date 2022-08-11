package com.dollarsbank.servelts;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dollarsbank.controller.DollarsBankController;

/**
 * Servlet implementation class TransactionOption
 */
@WebServlet("/SABalance")
public class SAccountBalance extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController();    
	
	
 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sAIdStr = request.getParameter("sAId");
		HttpSession session = request.getSession();
		int accID = (int) session.getAttribute("accID");
		  
		RequestDispatcher dispatcher =  request.getRequestDispatcher("index.jsp");
	try {	
		Double balance = dBController.getBalance(accID, Integer.valueOf(sAIdStr));
		request.setAttribute("balance", "$" + balance);
		request.setAttribute("sAId", sAIdStr);
		System.out.println(balance);

		
	} catch (IndexOutOfBoundsException e) {
		request.setAttribute("statusB", "doesNotExist");
	} catch (NumberFormatException e) {
		request.setAttribute("statusB", "error");
	} catch (NullPointerException e) {
		request.setAttribute("statusB", "error");
	} finally {
		dispatcher.forward(request, response);
	}
	
		 
		
	}

}
