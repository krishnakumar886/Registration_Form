package com.registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.RegisterBean;
import com.dao.RegisterDao;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {

	public RegisterServlet() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String occupation = request.getParameter("occupation");
		String mobileno = request.getParameter("mobileno");
		String address = request.getParameter("address");

		RegisterBean registerBean = new RegisterBean();

		registerBean.setFullName(fullName);
		registerBean.setEmail(email);
		registerBean.setUserName(userName);
		registerBean.setPassword(password);
		registerBean.setUserName(occupation);
		registerBean.setMobileno(mobileno);
		registerBean.setAddress(address);

		RegisterDao registerDao = new RegisterDao();

		String userRegistered = registerDao.registerUser(registerBean);

		if (userRegistered.equals("SUCCESS")) {
			request.getRequestDispatcher("/Input.jsp").forward(request, response);
		} else {
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}
	}
}