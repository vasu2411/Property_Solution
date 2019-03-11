package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class saveproperty_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String iam = request.getParameter("iam");
            String propfor = request.getParameter("pfor");
            String proptype = request.getParameter("ptype");
            String city = request.getParameter("pcity");
            String locality = request.getParameter("plocality");
            String socname = request.getParameter("psocname");
            String bedroom = request.getParameter("bed");
            String bathroom = request.getParameter("bath");
            String balcony = request.getParameter("bal");
            String floor = request.getParameter("flo");
            String totalfloor = request.getParameter("totflo");
            String sbuarea = request.getParameter("sbarea")+request.getParameter("unitsbarea");
            String buarea = request.getParameter("barea")+request.getParameter("unitbarea");
            String carea = request.getParameter("carea")+request.getParameter("unitcarea");
            String transactiontype = request.getParameter("typeoft");
            String status = request.getParameter("pstatus");
            String expectedpri = request.getParameter("exppri");
            String maintenancemonthly = request.getParameter("maintenance");
            String description = request.getParameter("pdescription");
            
            /*out.println("iam:"+iam);
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
            
            Connection cn = null;
            Statement st = null;
            String dburl = "jdbc:derby://localhost:1527/pnprop";
            String uname = "vvs";
            String upass = "vvs";
            /*try{*/
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            out.println("Class loaded");
            cn = DriverManager.getConnection(dburl, uname, upass);
            out.println("Connection made");
            String query = "insert into properties values('"+iam+"','"+propfor+"','"+proptype+"','"+city+"','"+locality+"','"+socname+"','"+bedroom+"','"+bathroom+"','"+balcony+"','"+floor+"','"+totalfloor+"','"+sbuarea+"','"+buarea+"','"+carea+"','"+transactiontype+"','"+status+"','"+expectedpri+"','"+maintenancemonthly+"','"+description+"'";
            out.println("query initialized");
            st=cn.createStatement();
            out.println("Statement created");
            st.executeUpdate(query);
            out.println("Query executed");
            /*cn.close();
            response.sendRedirect("successsaveproperty.jsp");
            }*/
            /*catch(SQLException e)
            {
                   out.println(e.getMessage());     
            }*/
        
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
