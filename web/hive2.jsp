<%-- 
    Document   : hive2
    Created on : Jun 6, 2018, 9:18:36 PM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cricket data analysis</title>
    </head>
    <body bgcolor="lightgreen">
        <center>
            <h1 style="background-color: black;color: limegreen;text-align:center;font-size: 300%">
               Total six in a match
            </h1>
        </center>
        <table border ="1" width="80%" target="_blank">
        <tr>
        <th style="text-align:center">Number of sixes</th>
        </tr>
         <%
            try
            {
                String name2=request.getParameter("t2");
                Class.forName("org.apache.hive.jdbc.HiveDriver");
                String url = "jdbc:hive2://192.168.232.128:10000/demo";
                Connection con = DriverManager.getConnection(url,"","");
                Statement stmt=con.createStatement();
                String q = "select count(runs_on_ball) from cricket where team_id='"+name2+"' and runs_on_ball=6";
                ResultSet rs=stmt.executeQuery(q);
                while(rs.next())
                {
         %>
         <tr>
             <td style="text-align:center"><%=rs.getString(1)%> </td>
         </tr>
         <%
            }
}
            catch(Exception e)
            {
                out.println("Error :"+e.getMessage());
            }    
         %>
         </table>
         </center>
         <img align="middle" src="six.jpg"  width="400" height="400" style="vertical-align: middle"> 
    </body>
</html>
