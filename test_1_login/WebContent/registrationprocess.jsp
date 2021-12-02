<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String password2 = request.getParameter("password2");
try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadb_158", "javadb_158", "ydwdwdaxhw");
 Statement st = conn.createStatement();
 int i = st.executeUpdate("insert into users6(email,password,password2)values('" + email + "','" + password+ "','" + password2  + "')");
 
} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
rd.forward(request, response);
%>