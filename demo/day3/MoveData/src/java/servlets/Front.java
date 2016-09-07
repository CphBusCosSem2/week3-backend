package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thomas Hartmann - tha@cphbusiness.dk created on Sep 7, 2016
 */
@WebServlet(name="Front", urlPatterns={"/Front"})
public class Front extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session = request.getSession();
        session.setAttribute("sessionusername", username);
        response.sendRedirect("result.jsp");
    }

//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>

}
