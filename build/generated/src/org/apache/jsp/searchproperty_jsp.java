package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class searchproperty_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("h3\n");
      out.write("{\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("                        width: 20%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>\n");
      out.write("    <ul>\n");
      out.write("        <li class=\"menu-item\"><a href=\"user.jsp\">Home</a></li>\n");
      out.write("        <li class=\"menu-item\"><a class=\"active\" href=\"buy.jsp\">Buy</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"rent.jsp\">Rent</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"pnestimate.jsp\">PNestimate</a></li>\n");
      out.write("        <li class=\"menu-item\"><a class=\"redbg\" href=\"postfreeadd.jsp\">Post property FREE</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"loan.jsp\">Loan</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"howwework.jsp\">How we work</a></li>\n");
      out.write("        <li class=\"menu-item\" style=\"float:right\"><a href=\"contactus.jsp\">Contact us</a></li>\n");
      out.write("    </ul>\n");
      out.write("    <center><h3>Search your Dream Property.</h3><br>\n");
      out.write("        <form action=\"searchproperty.jsp\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td><b>Locality:</b></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td><input type=\"text\" name=\"locality\" required><td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><b><br>Property type:</b></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td><br><select name=\"ptype\" required>\n");
      out.write("                    <option value=\"Multistorey Apartment\">Multistorey Apartment</option>\n");
      out.write("                    <option value=\"Builder Floor Apartment\">Builder Flor Apartment</option>\n");
      out.write("                    <option value=\"Residental House\">Residental House</option>\n");
      out.write("                    <option value=\"Residential Plot\">Residential Plot</option>\n");
      out.write("                    <option value=\"Villa\">Villa</option>\n");
      out.write("                    <option value=\"PentHouse\">PentHouse</option>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <b>Budget:</b>\n");
      out.write("                </td>\n");
      out.write("                <td></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td><br>Min:<input type=\"number\" name=\"minbudget\" required><br><br>\n");
      out.write("                    Max:<input type=\"number\" name=\"maxbudget\" required>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td></td>\n");
      out.write("                <td><br><input type=\"submit\" value=\"Search\" required></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("    </form>\n");
      out.write("    ");
 
        String locality = request.getParameter("locality").toLowerCase();
        String ptype = request.getParameter("ptype").toLowerCase();
        String min = request.getParameter("minbudget").toLowerCase();
        String max = request.getParameter("maxbudget").toLowerCase();
        /*out.println(locality);
        out.println(ptype);
        out.println(min);
        out.println(max);*/
                    Connection cn = null;
                    Statement st = null;
                    try 
                    {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                    } 
                    catch (ClassNotFoundException ex) 
                    {
                        out.println("Class not found exception");
                    }
                    String dburl="jdbc:derby://localhost:1527/pnprop";
                    String uname = "vvs";
                    String upass = "vvs";
                    try 
                    {
                        cn=DriverManager.getConnection(dburl,uname,upass);
                        st=cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        
                    } 
                    catch (SQLException ex) 
                    {
                        out.println("SQL exception");
                    }
                    String query="select * from properties where locality='"+locality+"' and type_of_property='"+ptype+"' and expected_price<='"+max+"' and expected_price>='"+min+"' ";
                            ResultSet rs;
                            rs = st.executeQuery(query);
                    int i=0;
                            while(rs.next())
                            {
      
                                out.println(++i);
                                /*String iam = rs.getString("iam");
                                String propfor = rs.getString("property_for");
                                String proptype = rs.getString("type_of_property");
                                String city = rs.getString("city");
                                String localiti = rs.getString("locality");
                                String socname = rs.getString("society_name");
                                String bedroom = rs.getString("bedrooms");
                                String bathroom = rs.getString("bathrooms");
                                String balcony = rs.getString("balconies");
                                String floor = rs.getString("floor");
                                String totalfloor = rs.getString("total_floors");
                                String sbuarea = rs.getString("super_built_up_area");
                                String buarea = rs.getString("built_up_area");
                                String carea = rs.getString("carpet_area");
                                String transactiontype = rs.getString("type_of_transaction");
                                String status = rs.getString("status");
                                String expectedpri = rs.getString("expected_price");
                                String maintenancemonthly = rs.getString("maintenance");
                                String description = rs.getString("description");
                                out.println("iam:"+iam);
                                out.println("Property For:"+propfor);
                                out.println("Property type:"+proptype);
                                out.println("City:"+city);
                                out.println("locality:"+locality);
                                out.println("Society name:"+socname);
                                out.println("Bedrooms:"+bedroom);
                                out.println("Bathrooms:"+bathroom);
                                out.println("Balconies:"+balcony);
                                out.println("Floor:"+floor);
                                out.println("Total Floors:"+totalfloor);
                                out.println("Super built-up area:"+sbuarea);
                                out.println("built up area:"+buarea);
                                out.println("Carpet area:"+carea);
                                out.println("Transaction type:"+transactiontype);
                                out.println("Status:"+status);
                                out.println("Expected price:"+expectedpri);
                                out.println("Maintenance:"+maintenancemonthly);
                                out.println("Description:"+description);*/
                                }
                            
                            
                           
                            
                       
    
      out.write("\n");
      out.write("        <center>\n");
      out.write("        <br><font size=2px>&copy2016 PNPROPERTY.COM ALL RIGHTS RESERVED<br>\n");
      out.write("\tDesigned by: VVS Technologies pvt. ltd.</font>\n");
      out.write("        </center>\n");
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
