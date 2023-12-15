package com.crud.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.crud.dao.UserDao;
import com.crud.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class UserServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String country = req.getParameter("country");
		System.out.println(req.getServletPath());
		
		User user = new User(name, email, country);
		UserDao userdao = new UserDao();
		int res = userdao.addUser(user);
		
		List<User> all_users = new ArrayList<User>();
		all_users = userdao.getUsers();
		System.out.println(all_users);
		
		req.setAttribute("all_users", all_users);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/userlist.jsp");
		
		resp.setContentType("text/html");

		/*
		 * PrintWriter out = resp.getWriter(); if(res>0) {
		 * out.print("<h5 style='color: green' align='center'>User added</h5>"); }else {
		 * out.
		 * print("<h5 style='color: red' align='center'>Something went wrong, please try again</h5>"
		 * ); }
		 */
		
		rd.include(req, resp);
	}
}
