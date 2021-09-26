<%-- 
    Document   : ArithmeticCalculator
    Created on : 23-Sep-2021, 6:54:46 PM
    Author     : Daniel Wong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="POST" action="Arithmetic">
            <div>
                <label>First:</label>
                <input type="number" name="firstNum" value="${firstNum}">
            </div>
            <div>
                <label>Second:</label>
                <input type="number" name="secondNum" value="${secondNum}">
            </div>
            <div>
                <input type="submit" name="add" value="+">
                <input type="submit" name="subtract" value="-">
                <input type="submit" name="multiply" value="*">
                <input type="submit" name="modulus" value="%">
            </div>
            <div>
                <p>Result: ${result}</p>
            </div>
            <div>
                <a href="/lab3_Calculator/Age" >Age Calculator</a>
            </div>
            
        </form>
    </body>
</html>
