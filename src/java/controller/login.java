/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Database;

/**
 *
 * @author US$ER
 */
@WebServlet(name = "login", urlPatterns = {"/login.do"})
public class login extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String email = request.getParameter("Email");
            String password = request.getParameter("Password");
            Database d = new Database();
            d.setpassword(password);
            d.setemail(email);
           
          String x = d.login();
          if(x.length() >0)
            {
              request.setAttribute("a", x);
              RequestDispatcher rs;
                rs = request.getRequestDispatcher("view/profile.jsp");
              rs.forward(request, response);
          }
          else
          {
              RequestDispatcher rs = request.getRequestDispatcher("view/error.jsp");
              rs.forward(request, response);
          }
            
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
