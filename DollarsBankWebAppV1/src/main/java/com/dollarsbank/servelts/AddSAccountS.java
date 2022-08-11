package com.dollarsbank.servelts;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dollarsbank.controller.DollarsBankController;
import com.dollarsbank.model.Account;

/**
 * Servlet implementation class AddSAccountS
 */
@WebServlet("/AddSAccountS") 
public class AddSAccountS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController();  
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String initialDAStr = request.getParameter("initialDA"); 
		HttpSession session = request.getSession();
		int accID = (int) session.getAttribute("accID");
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("index.jsp");
		try {
		if(!initialDAStr.isEmpty()) {
			Double initialDA = Double.valueOf(initialDAStr);
			Account acc = dBController.getAccountById(accID);
			dBController.addSavingAccount(acc, initialDA);
			request.setAttribute("statusA", "success");
		}
		else
			request.setAttribute("statusA", "error");
		} catch (IndexOutOfBoundsException e) {
			request.setAttribute("statusA", "doesNotExit");
		} catch (NumberFormatException e) {
			request.setAttribute("statusA", "error");
		} catch (NullPointerException e) {
			request.setAttribute("statusA", "error");
		} finally {
			dispatcher.forward(request, response);
		}
			 
	}
	

}
