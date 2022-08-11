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

/**
 * Servlet implementation class WithdrawS
 */
@WebServlet("/WithdrawS")
public class WithdrawS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController();  
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sAIdStr = request.getParameter("sAId");
		String withdrawAmtStr = request.getParameter("withdrawAmt");
		HttpSession session = request.getSession();
		int accID = (int) session.getAttribute("accID");
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("index.jsp");
		try {
			if(!sAIdStr.isEmpty() && !withdrawAmtStr.isEmpty()) {
				int sAId = Integer.valueOf(sAIdStr);
				double withdrawAmt = Double.valueOf(withdrawAmtStr);
				dBController.withdraw(sAId, withdrawAmt,  accID,  false);
				request.setAttribute("statusW", "success");
			}
			else
				request.setAttribute("statusW", "error");
		
		} catch (IndexOutOfBoundsException e) {
			request.setAttribute("statusW", "doesNotExist");
		} catch (NumberFormatException e) {
			request.setAttribute("statusW", "error");
		} catch (NullPointerException e) {
			request.setAttribute("statustatusWsD", "error");
		} finally {
			dispatcher.forward(request, response);
		} 
			
	}

}
