package com.dollarsbank.servelts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dollarsbank.controller.DollarsBankController;

/**
 * Servlet implementation class THistoryS
 */
@WebServlet("/THistoryS")
public class THistoryS extends HttpServlet {
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
		
			int sAId = Integer.valueOf(sAIdStr);
			List<String> listTH = dBController.recentTransact(accID,sAId);
			int lSize = listTH.size();
			if(listTH.isEmpty() || sAId > lSize)
				request.setAttribute("listTH", "error");
			else {
				String str = "";
				int count = 0;
				while(lSize > 0 && count < 5)	{
					str += listTH.get(lSize-1);
					str += "\n";
					lSize--;
					count ++;
				}
				 System.out.println(str);
				 request.setAttribute("listTH", str);
			 }		
	} catch (IndexOutOfBoundsException e) {
		request.setAttribute("statusTH", "doesNotExist");
	} catch (NumberFormatException e) {
		request.setAttribute("statusTH", "error");
	} catch (NullPointerException e) {
		request.setAttribute("statusTH", "error");
	} finally {
		dispatcher.forward(request, response);
	}
	
		
	}

}
