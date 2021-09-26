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
            padding-right: 15px;
            margin-right: 5px;
        }
        body input.submit {
            padding: 2px 15px;
            border-radius: 8px;
            transition-duration: 0.4s;
        }
        .submit:hover {
            background-color: #949494;
            color: white;
        }
    </style>
    <body>
        <div>
            <h1>Age Calculator</h1>
            <form method = "POST" action="Age">
                <div>
                <label>Enter Your Age:</label>
                <input type="text" name="AgeInput" value="${AgeInput}">
                </div>
                <div>
                    <input class="submit" type="submit" name="submit" value="Age Next Birthday"
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
