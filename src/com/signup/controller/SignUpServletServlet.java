package com.signup.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.signup.model.UserStorage;

@SuppressWarnings("serial")
public class SignUpServletServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");

		String username = req.getParameter("username");
		String upassword = req.getParameter("password1");
		UserStorage obj = new UserStorage();
		obj.addUser(username, upassword);
		String sendMessage="Signed Up Successfully";
		req.setAttribute("message1", sendMessage);
		RequestDispatcher rd = req.getRequestDispatcher("/LoginPage");
		rd.forward(req, resp);
//		resp.sendRedirect("/LoginPage");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		doGet(req, resp);
	}
}
