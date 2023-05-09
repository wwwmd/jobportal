package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.dao.jobdao;
import com.db.Dbconnect;
@WebServlet("/delete")
public class Delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			jobdao dao= new jobdao(Dbconnect.getconnect());
			 boolean f=dao.deleteJobs(id);
			 HttpSession session=req.getSession();
			 if(f) {
				 session.setAttribute("msg", "job delete sucessfully");
				 resp.sendRedirect("viewjob.jsp");
			 }
			 else {
				 session.setAttribute("msg", "something error");
				 resp.sendRedirect("viewjob.jsp");
			 }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
