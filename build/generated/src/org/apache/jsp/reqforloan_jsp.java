package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class reqforloan_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/footer.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("ul {\n");
      out.write("    list-style-type: none;\n");
      out.write("    margin: 14px;\n");
      out.write("    padding: 0;\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color: #333;\t\n");
      out.write("    width: 97%\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("li {\n");
      out.write("    float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a {\n");
      out.write("    display: block;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 14px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover:not(.active) {\n");
      out.write("    background-color: #111;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".redbg{\n");
      out.write("background-color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".greenbg{\n");
      out.write("background-color: #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h2\n");
      out.write("{\n");
      out.write("\t\t\tbackground-color: #4CAF50;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("\t\t\twidth: 40%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>\n");
      out.write("<ul>\n");
      out.write("  <li class=\"menu-item\"><a href=\"admin.jsp\">Home</a></li>\n");
      out.write("   <li class=\"menu-item\"><a href=\"allusers.jsp\">Registered users</a></li>\n");
      out.write("  <li class=\"menu-item\"><a href=\"allproponsale.jsp\">Properties for sale</a></li>\n");
      out.write("  <li class=\"menu-item\"><a href=\"allproponrent.jsp\">Properties for rent</a></li>\n");
      out.write("  <li class=\"menu-item\"><a href=\"reqforpnestimate.jsp\">Requests for PNestimate</a></li>\n");
      out.write("  <li class=\"menu-item\"><a class=\"active\" href=\"reqforloan.jsp\">Requests for loan</a></li>\n");
      out.write("  <li class=\"menu-item\" style=\"float:right\"><a href=\"index.html\">Logout</a></li>\n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("       <br><center><table border=\"1\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td><center>Srno.</td>\n");
      out.write("                                        <td><center>Name</td>\n");
      out.write("                                        <td><center>Contact</td>\n");
      out.write("                                        <td><center>Address</td>\n");
      out.write("                                        <td><center>Expected Loan amount</td>\n");
      out.write("                                        <td><center>Salary (per month)</td>\n");
      out.write("                                    </tr>    \n");
      out.write("    ");
 
        int flag=0;
        int j=1;
            Connection cn = null;
                    Statement st = null;
                    try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                    } catch (ClassNotFoundException ex) {
                       out.println("class notfound exception");
                    }
                    String dburl="jdbc:derby://localhost:1527/pnprop";
                    String uname = "vvs";
                    String upass = "vvs";
                    try {
                        cn=DriverManager.getConnection(dburl,uname,upass);
                    } catch (SQLException ex) {
                        out.println("connection problem");
                    }
                    try {
                        st=cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    } catch (SQLException ex) {
                        out.println("statement creation problem");
                    }
                    String query="select * from loanrequests";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                int srno = j;
                                j++;
                                flag=1;
                                String name = rs.getString("name");
                                String contact = rs.getString("contactnum");
                                String add = rs.getString("address");
                                String expectam = rs.getString("expectamount");
                                String sal = rs.getString("salarypmon");
    
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td><center>");
out.println(srno);
      out.write("</center></td>\n");
      out.write("                                 <td><center>");
out.println(name); 
      out.write("</td>\n");
      out.write("                                <td><center>");
out.println(contact); 
      out.write("</td>\n");
      out.write("                                <td><center>");
out.println(add); 
      out.write("</td>\n");
      out.write("                                <td><center>");
out.println(expectam); 
      out.write("</td>\n");
      out.write("                                <td><center>");
out.println(sal); 
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                
                            }
                            
                            st.close();
                            cn.close();
                            if(flag==0)
                            {
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"21\"><center><h1>No Matches found!!!</h1></td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            }   
                        } catch (SQLException ex) {
                            out.println("Query execution problem");
                        }
    
      out.write("\n");
      out.write("    </table><br>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <font size=2px>&copy2016 PNPROPERTY.COM ALL RIGHTS RESERVED<br>\n");
      out.write("\tDesigned by: VVS Technologies pvt. ltd.</font>\n");
      out.write("        </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
