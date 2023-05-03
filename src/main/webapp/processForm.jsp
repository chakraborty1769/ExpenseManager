<%@ page import="com.expenseManager.DBConnect,java.util.*,java.sql.*,java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
DBConnect db=new DBConnect();
Connection con=db.connection;
PreparedStatement statement = con.prepareStatement("INSERT INTO `expense_management` (`category`, `days`, `expense_name`, `description`, `amount`) VALUES (?, ?, ?, ?, ?)");
String expenseCategory =request.getParameter("category");
String expenseName =request.getParameter("expense_name");
String expenseDescription =request.getParameter("description");
int expenseAmount = Integer.parseInt(request.getParameter("amount"));
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
java.util.Date date = format.parse(request.getParameter("date"));
java.sql.Date sqlDate = new java.sql.Date(date.getTime());
statement.setString(1, expenseCategory);
statement.setDate(2, sqlDate);
statement.setString(3, expenseName);
statement.setString(4, expenseDescription);
statement.setInt(5, expenseAmount);
if(statement.executeUpdate()>0){
out.println("<h1>You have submitted the form successfully!</h1>");
}
System.out.println("<a href=\"view.jsp\">Show</a>");
System.out.println("<a href=\"index.jsp\">Add</a>");
%>