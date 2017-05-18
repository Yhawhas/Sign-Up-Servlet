package com.signup.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.signup.model.UserStorage;

@SuppressWarnings("serial")
public class LogInServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		String name = req.getParameter("uname");
		String pass = req.getParameter("password");
		UserStorage obj = new UserStorage();

		boolean uservalid = obj.checkUser(name, pass);

		if (uservalid) {
			HttpSession session = req.getSession();
			session.setAttribute("usernameSession", name);
			resp.sendRedirect("/WelcomePage");
		} else {
			
			resp.setContentType("text/html");
			String userInvalidMessage = "User Name or Password is incorrect";
			req.setAttribute("message", userInvalidMessage);
			RequestDispatcher rd = req.getRequestDispatcher("/LoginPage");
			rd.forward(req, resp);
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session == null) 
			resp.sendRedirect("/LoginPage");
		else	
			resp.sendRedirect("/WelcomePage");
		}
}
