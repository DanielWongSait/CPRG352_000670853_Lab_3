<%-- 
    Document   : agecalculator
    Created on : 23-Sep-2021, 4:47:19 PM
    Author     : Daniel Wong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <div>
            <h1>Age Calculator</h1>
            <form method = "POST" action="Age">
                <div>
                <label>Enter Your Age:</label>
                <input type="text" name="AgeInput" value="${AgeInput}">
                </div>
                <div>
                <input type="submit" name="submit" value="Age Next Birthday"
                </div>
                <div>
                    <p>${Success} ${Age_Input}</p>
                </div>
                <div>
                    <a href="/lab3_Calculator/Arithmetic" >Arithmetic Calculator</a>
                </div>
            </form>
        </div>
        
    </body>
</html>
