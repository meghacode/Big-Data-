<%-- 
    Document   : Index
    Created on : Jun 5, 2018, 10:25:41 PM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interactive Cricket Analysis</title>
    </head>
    <body background="try.jpg"  background-size="cover">
        <h1 style="background-color: black;color:limegreen;font-size: 300%;text-align:center">
                Interactive Cricket Analytics Report
                <br>
                (Project Based Queries)
        </h1>
        <img src="cricket1.jpg" width="500" height="500" style="float:right">
            <h3>Description about data set:</h3>
            Match played between teams in tournament :
            <ul>
                <li>India vs Australia:1093</li>
                <li>England vs Australia:211028</li>
                <li>NZ vs Australia:211048</li>
                <li>SA vs India:1049</li>
                <li>SA vs NZ:222678</li>
            </ul>
            <form action = "hive.jsp" target="_blank">
        <b>Select team's name in which you wish to find top 3 scorers</b>
         <input type="text" name="t1"/><br>
                <input type="submit" value="Submit Query">
    </form><br>
        <form action = "hive1.jsp" target="_blank">
        <b>Select team's name in which you wish to find top 3 wicket takers in a match</b>
        <input type="text" name="t1"/><br>
        enter match id:
        <input type=int name="t2"/><br>
                <input type="submit" value="Submit Query">
    </form><br>
    </form><br>
        <form action = "hive2.jsp" target="_blank">
        <b>Total six in a match</b>
        enter match id:
        <input type=text name="t2"/><br>
                <input type="submit" value="Submit Query">
    </form><br>
        <form action = "hive3.jsp" target="_blank">
        <b>Total four in a match</b>
        enter match id:
        <input type="text" name="t2"/><br>
                <input type="submit" value="Submit Query">
    </form><br>
         <form action = "hive4.jsp" target="_blank">
        <b>Players who scored century in tournament</b>
                <input type="submit" value="Submit Query">
    </form><br>
     <form action = "hive5.jsp" target="_blank">
        <b>Players who scored half century in tournament</b>
                <input type="submit" value="Submit Query">
    </form><br>
    </body>
</html>
