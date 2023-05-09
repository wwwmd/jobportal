package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.Dbconnect;
import com.entity.User;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			String email2=req.getParameter("email1");
			String pass2=req.getParameter("pass1");
			HttpSession hs=req.getSession();
			User u=new User();
		if("mdshamsher@gmail.com".equals(email2) && "123".equals(pass2)) {
			hs.setAttribute("userobj", u);
			u.setRole("admin");
			resp.sendRedirect("admin.jsp");
			
			
			
			
			
			
		}
		else { 
			
			UserDAO dao=new UserDAO(Dbconnect.getconnect());
		User user=	dao.login(email2, pass2);
		
		
		if(user!=null) {
//			resp.sendRedirect("login2.jsp");
			hs.setAttribute("userobj", user);
			resp.sendRedirect("Home.jsp");

		}
		else {
			hs.setAttribute("userobj", user);
			resp.sendRedirect("login2.jsp");
		
		}
		
		}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
	}

}
