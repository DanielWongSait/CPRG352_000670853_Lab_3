/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ArithmeticServlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daniel Wong
 */
public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalculator.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstNum = request.getParameter("firstNum");
        String secondNum = request.getParameter("secondNum");
        int result;

        //Check if the input is null
        if (firstNum == null || firstNum.equals("") && secondNum == null || secondNum.equals("")) {
            request.setAttribute("result", "---");
        }
        
        //Check if input is a number
        Boolean check = true;
        for(int i = 0; i<firstNum.length(); i++) {
            if(i==0 && firstNum.charAt(i) == '-')
                continue;
            if(!Character.isDigit(firstNum.charAt(i)))
                request.setAttribute("result", "Invalid");
                check = false;
        }
        for(int i = 0; i<secondNum.length(); i++) {
            if(i==0 && secondNum.charAt(i) == '-')
                continue;
            if(!Character.isDigit(secondNum.charAt(i)))
                request.setAttribute("result", "Invalid");
                check = false;
        }
        
        //If input is a number Convert String inputs into integers
        try{
        int numberOne = Integer.parseInt(firstNum);
        int numberTwo = Integer.parseInt(secondNum);
        if (request.getParameter("add") != null) {
            result = numberOne + numberTwo;
        request.setAttribute("firstNum", firstNum);
        request.setAttribute("secondNum",secondNum);
        request.setAttribute("result", result);
        } else if (request.getParameter("subtract") != null) {
            result = numberOne - numberTwo;
        request.setAttribute("firstNum", firstNum);
        request.setAttribute("secondNum",secondNum);
        request.setAttribute("result", result);
        } else if (request.getParameter("multiply") != null) {
            result = numberOne * numberTwo;
        request.setAttribute("firstNum", firstNum);
        request.setAttribute("secondNum",secondNum);
        request.setAttribute("result", result);
        } else if (request.getParameter("modulus") != null) {
            result = numberOne % numberTwo;
        request.setAttribute("firstNum", firstNum);
        request.setAttribute("secondNum",secondNum);
        request.setAttribute("result", result);
        }
        }catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalculator.jsp").forward(request, response);
    }
}
