
package AgeServlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AgeCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Load JSP
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        return;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Capture parameters coming in from POST request
        String AgeInput = request.getParameter("AgeInput");
        String Success = "Your age next birthday will be ";
        request.setAttribute("AgeInput", AgeInput);
        if (AgeInput == null || AgeInput.equals("")){
            request.setAttribute("Age_Input", "*** Please enter age before submitting***");
        }
        Boolean check = true;
        for(int i = 0; i<AgeInput.length(); i++) {
            if(i==0 && AgeInput.charAt(i) == '-')
                continue;
            if(!Character.isDigit(AgeInput.charAt(i)))
                request.setAttribute("Age_Input", "*** Please enter valid age before submitting ***");
                check = false;
        }
        
        // Convert string to int to performe age calculations
        try{
        int newAge = Integer.parseInt(AgeInput);
        System.out.println(newAge);
        request.setAttribute("Age_Input", newAge + 1 + "!");
        request.setAttribute("Success", Success);
        }catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        return;
    }
    
}