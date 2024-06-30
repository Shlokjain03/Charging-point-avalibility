<%-- 
    Document   : accountSignAction
    Created on : 28 Jun, 2024, 11:16:59 AM
    Author     : DELL
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fullname=request.getParameter("fullname");
    String email=request.getParameter("email");
    String dob=request.getParameter("dob");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chargingpointavaliblityforekectricvehicle" ,"root", "root");
    Statement st=con.createStatement();
    
    int i=st.executeUpdate("insert into user value('"+fullname+"','"+email+"','"+dob+"','"+username+"','"+password+"')");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Signup Success");
            window.location="accountsignup.html";
        </script>
        <%
            }else{
        %>
        <script type="text/javascript">
            window.alert("Signup Failed");
            window.location="accountsignup.html";
        </script>
        <%
            }


    }catch(Exception e){
out.println(e);
    }
%>