<%-- 
    Document   : hive1
    Created on : Jun 6, 2018, 9:05:12 PM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  bgcolor="lightgreen">
        <center>
                <h1 style="background-color: black;color: limegreen;text-align:center;font-size: 300%">
                    Top 3 wicket takers
                </h1>
        </center>
    <center>
    <table border ="1" width="80%" >
        <tr>
            <th style="text-align:center">Player</th>
            <th style="text-align:center">Wickets</th>
        </tr>
               <%
            try
            {
                String name1=request.getParameter("t1");
                String name2=request.getParameter("t2");
                Class.forName("org.apache.hive.jdbc.HiveDriver");
                String url = "jdbc:hive2://192.168.232.128:10000/demo";
                Connection con = DriverManager.getConnection(url,"","");
                Statement stmt=con.createStatement();
                String q = "select baller_name,count(wicket) as wick from cricket where team!='"+name1+"' and team_id='"+name2+"' group by baller_name order by wick desc limit 3";
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
         </table>
         
         <img align="middle" src="out.jpg"  width="400" height="400" style="vertical-align: middle">
         </center>
    </body>
</html>
