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
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Mate+SC&family=Milonga&family=Sarina&display=swap');
        body {
            text-align: center;
            font-family: 'Milonga', cursive;
        }
        body input {
            display: inline-block;
            margin-bottom: 15px;
            margin-top: 5px;
            margin-left: 8px;
            margin-right: 8px;
        }
        body label {
            display: inline-block;
        }
        #fir {
            margin-left: 27px;
        }
        input.submit {
           padding: 2px 15px;
           border-radius: 8px;
        }
    </style>
    </head>
    
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="POST" action="Arithmetic">
            <div>
                <label id="first">First:</label>
                <input type="text" id="fir" name="firstNum" value="${firstNum}">
            </div>
            <div>
                <label id="second">Second:</label>
                <input type="text" id="sec" name="secondNum" value="${secondNum}">
            </div>
            <div>
                <input class="submit" type="submit" name="add" value="+">
                <input class="submit" type="submit" name="subtract" value="-">
                <input class="submit" type="submit" name="multiply" value="*">
                <input class="submit" type="submit" name="modulus" value="%">
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
