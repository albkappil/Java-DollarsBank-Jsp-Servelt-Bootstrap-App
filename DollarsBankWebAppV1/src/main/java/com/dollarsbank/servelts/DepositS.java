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
 * Servlet implementation class DepositS
 */
@WebServlet("/DepositS")
public class DepositS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController();  
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sAIdStr = request.getParameter("sAId");
		String depositAmtStr = request.getParameter("depositAmt");
		HttpSession session = request.getSession();
		int accID = (int) session.getAttribute("accID");
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("index.jsp");
		try {
			if(!sAIdStr.isEmpty() && !depositAmtStr.isEmpty()) {
				int sAId = Integer.valueOf(sAIdStr);
				double depositAmt = Double.valueOf(depositAmtStr);
				dBController.deposit(sAId, depositAmt,  accID,  false);
				request.setAttribute("statusD", "success");
			}
			else
				request.setAttribute("statusD", "error");
		
		} catch (IndexOutOfBoundsException e) {
			request.setAttribute("statusD", "doesNotExist");
		} catch (NumberFormatException e) {
			request.setAttribute("statusD", "error");
		} catch (NullPointerException e) {
			request.setAttribute("statusD", "error");
		} finally {
			dispatcher.forward(request, response);
		}  
	}

}
