package com.full;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LogInPageServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");
		HttpSession session = req.getSession(false);
		if (session == null) {
			RequestDispatcher rd = req.getRequestDispatcher("/LogIn.jsp");
			rd.forward(req, resp);
		}
		if (session != null) {
			if ((boolean) session.getAttribute("ProfileSubmitted")) {
				resp.sendRedirect("/ProfilePage");
//				RequestDispatcher reqDis = req.getRequestDispatcher("/ProfilePage");
//				reqDis.forward(req, resp);
			}
			resp.sendRedirect("/WelcomePage");
//			RequestDispatcher reqDis = req.getRequestDispatcher("/WelcomePage");
//			reqDis.forward(req, resp);
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		doPost(req, resp);

	}
}