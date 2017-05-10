package com.full;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			boolean result = false;
			session.setAttribute("ProfileSubmitted", result);
			session.setAttribute("usernameSession", name);
			resp.sendRedirect("/WelcomePage");
		} else {
			resp.setContentType("text/html");
			resp.getWriter().println("User Invalid");
			System.out.println("User Invalid");
			resp.sendRedirect("/LoginPage");
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session == null) {
			resp.sendRedirect("/LoginPage");
		}

		if (session != null) {
			if ((boolean) session.getAttribute("ProfileSubmitted")) {
				resp.sendRedirect("/ProfilePage");
			}
			resp.sendRedirect("/WelcomePage");
		}
	}
}
