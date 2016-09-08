package servlets;

import data.DB;
import entity.User;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thomas Hartmann - tha@cphbusiness.dk created on Sep 7, 2016
 */
@WebServlet(name="Persist", urlPatterns={"/Persist"})
public class Persist extends HttpServlet {
   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        List<User> users = new ArrayList();
        try {
            ResultSet rs = DB.getConnection().prepareStatement("SELECT * FROM login").executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                users.add(new User(id, username, password));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        request.getSession().setAttribute("users", users);
        response.sendRedirect("userlist.jsp");
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            //Form data:
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            String sql = "INSERT INTO login (username, password) VALUES (?, ?)";
            Connection conn = DB.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.executeUpdate();
            
            request.setAttribute("username", username);
            request.getRequestDispatcher("result.jsp").forward(request, response);
            response.getWriter().print("SUCCESS! the user is added");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
