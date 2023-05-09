package com.dao;
import com.entity.Jobs;
import com.sun.org.apache.bcel.internal.generic.I2D;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class jobdao {
	private Connection con;

	public jobdao(Connection con) {
		super();
		this.con = con;
	}
	public boolean addjobs(Jobs j) {
		boolean f=false;
		
		
		try {
			String sql="insert into jobs (title,description,category,status,location) values(?,?,?,?,?)";
   
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3,j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public List<Jobs> getAllJobs(){
		List<Jobs> list=new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			String sql="select * from jobs order by id desc";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				j=new Jobs();
				j.setTitle(rs.getString(1));
				j.setDescription(rs.getString(2));
				j.setCategory(rs.getString(3));
				j.setStatus(rs.getString(4));
				j.setLocation(rs.getString(5));
				
			j.setPdate(rs.getTimestamp(6)+"");
			j.setId(rs.getInt(7));
			list.add(j);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
		
		
	}
	public Jobs getjobbyid(int id){
		
		Jobs j=null;
		
		try {
			String sql="select * from jobs where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(7, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				j=new Jobs();
				j.setTitle(rs.getString(1));
				j.setDescription(rs.getString(2));
				j.setCategory(rs.getString(3));
				j.setStatus(rs.getString(4));
				j.setLocation(rs.getString(5));
				
			j.setPdate(rs.getTimestamp(6)+"");
			j.setId(rs.getInt(7));
			
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return j;
		
		
		
	}
	public boolean deleteJobs(int id) {
		boolean f=false;
		try {
			String sql="delete from jobs where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(7, id);
		int rs=	ps.executeUpdate();
		if(rs==1) {
			f=true;
		}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	public List<Jobs> getAllJobsForUser(){
		List<Jobs> list=new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			String sql="select * from jobs where status=? order by id desc";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, "Active");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				j=new Jobs();
				j.setTitle(rs.getString(1));
				j.setDescription(rs.getString(2));
				j.setCategory(rs.getString(3));
				j.setStatus(rs.getString(4));
				j.setLocation(rs.getString(5));
				
			j.setPdate(rs.getTimestamp(6)+"");
			j.setId(rs.getInt(7));
			list.add(j);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
		
		
	}

	
	

}
