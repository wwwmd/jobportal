package com.servlet;

import java.io.IOException;
import com.entity.*;
import com.dao.*;
import com.db.Dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet {
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
	try {
		String title=req.getParameter("title");
		String location=req.getParameter("location");
		String status=req.getParameter("status");
		String description=req.getParameter("description");
		String category=req.getParameter("category");
		Jobs j=new Jobs();
		j.setTitle(title);
		j.setCategory(category);
		j.setDescription(description);
		j.setLocation(location)
	;
	j.setStatus(status);
	HttpSession session=req.getSession();
	jobdao dao=new jobdao(Dbconnect.getconnect());
	 boolean f=dao.addjobs(j);
	 if(f) {
		 session.setAttribute("msg", "job post successfully");
		 resp.sendRedirect("add_job.jsp");
	 }
	 else {
		 session.setAttribute("msg", "something wrong on this server");
		 resp.sendRedirect("add_job.jsp");
	 }
		
		
	}
	catch(Exception e ) {
		e.printStackTrace();
	}
}
}
