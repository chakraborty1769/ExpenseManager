<%@ page import="java.sql.*,com.expenseManager.DBConnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Expense Management</title>
  <style>
      tr,td,table{
        border: 1px solid blueviolet;
      }
   </style>
</head>
<body>
  <%
   try{
   DBConnect dbc = new DBConnect();
   Connection con = dbc.connection;
   Statement statement = con.createStatement();
   ResultSet resultSet = statement.executeQuery("SELECT * FROM `expense_management`");
   out.println("<table>");
  out.println("<tr><th>Name</th><th>Category</th><th>Description</th><th>Amount</th><th>Date</th></tr>");
   while(resultSet.next()){
     out.println("<tr><td>"+resultSet.getString("expense_name")+"</td>"+
     "<td>"+resultSet.getString("category")+"</td>"+
     "<td>"+resultSet.getString("description")+"</td>"+
     "<td>"+resultSet.getInt("amount")+"</td>"+
     "<td>"+resultSet.getDate("days")+"</td>"+
     "</tr>");
   }
   out.println("</table>");
   }catch(SQLException e){
   out.println(e.getMessage());
   System.out.println("error!");
   }
  %>
  <a href="view.jsp">Show</a>
  <a href="index.jsp">Add</a>
</body>
</html>
