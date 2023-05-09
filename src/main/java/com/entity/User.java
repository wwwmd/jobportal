package com.entity;

public class User {
private int id;

private String name;
private String email1;
private String password;
private String qualification;
private String role;



public User(String name, String email1, String password, String qualification, String role) {
	super();
	this.name = name;
	this.email1 = email1;
	this.password = password;
	this.qualification = qualification;
	this.role = role;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail1() {
	return email1;
}
public void setEmail1(String email1) {
	this.email1 = email1;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}






}
