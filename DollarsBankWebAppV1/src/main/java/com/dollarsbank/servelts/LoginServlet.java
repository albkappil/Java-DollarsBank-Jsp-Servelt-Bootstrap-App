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
import com.dollarsbank.exceptions.IncorrectCredentialException;
import com.dollarsbank.model.Account;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DollarsBankController dBController = new DollarsBankController(); 
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		try {
			Account acc = dBController.verifiyCred(uname, password);	
			if(acc == null) {
				System.out.println("Account does not exist");
				request.setAttribute("status", "error");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			else {		
				session.setAttribute("name", acc.getUsername());
				session.setAttribute("accID", acc.getUserId());
				dispatcher = request.getRequestDispatcher("index.jsp");
			}
		}catch (IncorrectCredentialException e) {
			request.setAttribute("status", "error");
			dispatcher = request.getRequestDispatcher("login.jsp");				
		} catch (NullPointerException e) {
			request.setAttribute("status", "error");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}finally {
			dispatcher.forward(request, response);
		}
	}
	
	
	
}