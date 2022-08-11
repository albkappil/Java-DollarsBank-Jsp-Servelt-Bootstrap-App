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
 * Servlet implementation class TransferS
 */
@WebServlet("/TransferS")
public class TransferS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController();  
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aIdToStr = request.getParameter("aIdTo");
		String sAIdToStr = request.getParameter("sAIdTo");
		String sAIdFromStr = request.getParameter("sAIdFrom");
		
		String transferAmtStr = request.getParameter("transferAmt");
		HttpSession session = request.getSession();
		int aIdFrom =-1 ;
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("index.jsp");
		try {
			//if(!aIdToStr.isEmpty() && !sAIdToStr.isEmpty() && session.getAttribute("accID") != null 
			//		&&  !sAIdFromStr.isEmpty() && !transferAmtStr.isEmpty()) {
				aIdFrom = (int) session.getAttribute("accID");
				int aIdTo = Integer.valueOf(aIdToStr);
				int sAIdTo = Integer.valueOf(sAIdToStr);
				int sAIdFrom = Integer.valueOf(sAIdFromStr);
				
				double transferAmt = Double.valueOf(transferAmtStr);
				
				dBController.transfer(aIdTo, sAIdTo,  aIdFrom,  sAIdFrom,transferAmt);
				request.setAttribute("statusD", "success");
			//}
			//else
			//	request.setAttribute("statusD", "error");
			
		} catch (IndexOutOfBoundsException e) {
			request.setAttribute("statusT", "doesNotExist");
		} catch (NumberFormatException e) {
			request.setAttribute("statusT", "error");
		} catch (NullPointerException e) {
			request.setAttribute("statusT", "error");
		} finally {
			dispatcher.forward(request, response);
		}
		
	}

}
