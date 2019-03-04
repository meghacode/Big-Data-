<%-- 
    Document   : hive
    Created on : Jun 5, 2018, 10:56:57 PM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cricket analysis</title>
    </head>
    <body  bgcolor="limegreen">
        <center>
            <h1 style="background-color: black;color: limegreen;text-align:center;font-size: 300%">
                Top 3 scorers
            </h1>
        </center>
    <center>
        <table border ="1" width="80%" >
        <tr>
            <th style="text-align:center">Player</th>
            <th style="text-align:center">Runs</th>
        </tr>
               <%
            try
            {
                String name1=request.getParameter("t1");
                Class.forName("org.apache.hive.jdbc.HiveDriver");
                String url = "jdbc:hive2://192.168.232.128:10000/demo";
                Connection con = DriverManager.getConnection(url,"","");
                Statement stmt=con.createStatement();
                String q = "select playe_on_strike,SUM(runs_on_ball) as run from cricket where team='"+name1+"' GROUP BY playe_on_strike order by run desc limit 3";
                ResultSet rs=stmt.executeQuery(q);
                while(rs.next())
                {
         %>
            <tr>
                <td style="text-align:center"><%=rs.getString(1)%> </td>
                <td style="text-align:center"><%=rs.getString(2)%> </td>
            </tr>
         <%
            }
}
            catch(Exception e)
            {
                out.println("Error :"+e.getMessage());
            }    
         %>
         <img align="middle" src="hit.png"  width="400" height="400" style="vertical-align: middle">
         </center>
        
        </body>
                    
</html>
