package com.servlet;

import java.io.IOException;
import com.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.Dbconnect;
@WebServlet("/add_user")
public class RegisterUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
	String name=	req.getParameter("name1");
	String qua=req.getParameter("qua1");
	String email=req.getParameter("email1");
	String password=req.getParameter("pass1");
	UserDAO dao=new UserDAO(Dbconnect.getconnect());
	User u=new User(name,email,password,qua,"User");
	boolean f=dao.addUser(u);
	HttpSession session=req.getSession();
	if(f) {
		session.setAttribute("msg", "Registration Successfull");
		resp.sendRedirect("Register2.jsp");
	}
	else {
		session.setAttribute("msg", "Something went wrong");
		resp.sendRedirect("Register2.jsp");
	}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		
		
	}

}
