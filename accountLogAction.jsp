<%-- 
    Document   : accountlogaction.jsp
    Created on : 29 Jun, 2024, 2:42:35 PM
    Author     : DELL
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String username=request.getParameter("username");
    String password=request.getParameter("password");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chargingpointavaliblityforekectricvehicle","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from user where username='"+username+"'and password='"+password+"'");

    if(rs.next()){
        %>
        <script type="text/javascript">
            window.alert("Login Success");
            window.location="accountHome.jsp";
        </script>
        <%
            }else{
        %>
        <script type="text/javascript">
            window.alert("Login Failed");
            window.location="account.html";
        </script>
        <%
            }


    }catch(Exception e){
out.println(e);
    }
%>
