package com.signup.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.signup.bean.Person;
import com.signup.model.PersonDetailsStorage;


@SuppressWarnings("serial")
public class UserProfileServlet extends HttpServlet {
	
	private PersonDetailsStorage storage;
	
		public UserProfileServlet() {
			storage = new PersonDetailsStorage();
		}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession(false);
		if (session == null) {
			resp.sendRedirect("/login");
		} else {
			String firstName = req.getParameter("fname");
			String lastName = req.getParameter("lname");
			String eMail = req.getParameter("email");
			String dateOfBirth = req.getParameter("dateOfBirth");
			String address = req.getParameter("address");
			
			Person person = new Person();
			person.setFirstName(firstName);
			person.setLastName(lastName);
			person.setmyemail(eMail);
			person.setDateOfBirth(dateOfBirth);
			person.setAddress(address);
			
			String username = (String)session.getAttribute("usernameSession");
			storage.addPersonDetail(username, person);
			
			Map<String, ArrayList<Person>> personDataMap = storage.getPersonData();
			ServletContext contextObj = getServletContext();
			contextObj.setAttribute("personDataMap", personDataMap);
			
//			boolean result = true;
//			session.setAttribute("ProfileSubmitted", result);

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
