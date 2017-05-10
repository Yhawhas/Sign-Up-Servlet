package com.full;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class UserProfileServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession(false);
		if (session == null) {
			resp.sendRedirect("/login");
		} else {
			String firstName = req.getParameter("fname");
			String lastName = req.getParameter("lname");
			String eMail = req.getParameter("email");
			String dOB = req.getParameter("dateOfBirth");
			String address = req.getParameter("address");
			ServletContext context=getServletContext(); 
			
			context.setAttribute("fname", firstName);
			context.setAttribute("lname", lastName);
			context.setAttribute("email", eMail);
			context.setAttribute("dateOfBirth", dOB);
			context.setAttribute("address", address);
			boolean result = true;
			session.setAttribute("ProfileSubmitted", result);

			resp.sendRedirect("/ProfilePage");
		}

	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession session = req.getSession(false);
		if (session == null) {
			resp.sendRedirect("/LoginPage");
		} else {
			resp.sendRedirect("/ProfilePage");
		}

	}
}
