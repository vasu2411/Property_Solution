/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author vasus
 */
@WebServlet(urlPatterns = {"/whattodo"})
public class whattodo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet whattodo</title>");            
            out.println("</head>");
            out.println("<body>");
            String act = request.getParameter("b1");
            
            if(act.equals("Register"))
            {
                response.sendRedirect("register.jsp");
            }
            else if(act.equals("Login"))
            {
                if(request.getParameter("uname").equals("admin") && request.getParameter("upass").equals("admin"))
                {
                    response.sendRedirect("admin.jsp");
                }   
                else
                {
                    int flag=0;
                    String username=request.getParameter("uname");
                    String enterpass = request.getParameter("upass");
                    Connection cn = null;
                    Statement st = null;
                    try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(whattodo.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    String dburl="jdbc:derby://localhost:1527/pnprop";
                    String uname = "vvs";
                    String upass = "vvs";
                    try {
                        cn=DriverManager.getConnection(dburl,uname,upass);
                    } catch (SQLException ex) {
                        Logger.getLogger(whattodo.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    try {
                        st=cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    } catch (SQLException ex) {
                        Logger.getLogger(whattodo.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    String query="select * from users";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                String dbuname = rs.getString("email");
                                String dbpass = rs.getString("password");
                                if(dbuname.equals(username) && dbpass.equals(enterpass))
                                {
                                    response.sendRedirect("user.jsp");
                                    flag=1;
                                }
                            }
                            if(flag==0)
                            {
                                response.sendRedirect("errorlogin.jsp");
                            }
                            st.close();
                            cn.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(whattodo.class.getName()).log(Level.SEVERE, null, ex);
                        }   
                }
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}