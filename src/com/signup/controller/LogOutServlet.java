package com.signup.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LogOutServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
			String logOutMessage = "Logged Out Successfully";
			req.setAttribute("message1", logOutMessage);
			RequestDispatcher rd = req.getRequestDispatcher("/LoginPage");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect("/LoginPage");
		}
	}
}
