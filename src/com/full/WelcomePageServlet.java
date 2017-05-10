package com.full;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class WelcomePageServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession(false);
		if (session == null)
			resp.sendRedirect("/login");

		else if ((boolean) session.getAttribute("ProfileSubmitted")) {
			resp.sendRedirect("/ProfilePage");
		}

		else {

			RequestDispatcher rd = req.getRequestDispatcher("/WelcomePage.jsp");
			rd.forward(req, resp);
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		doPost(req, resp);
	}
}