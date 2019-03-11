package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("\t<style>\n");
      out.write("\t\tinput[type=submit]\n");
      out.write("\t\t{\n");
      out.write("\t\t\tbackground-color: #4CAF50;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("\t\t\tpadding: 14px 20px;\n");
      out.write("\t\t\tmargin: 8px 0;\n");
      out.write("\t\t\tborder: none;\n");
      out.write("\t\t\tcursor: pointer;\n");
      out.write("\t\t\twidth: 12.5%;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput[type=button]\n");
      out.write("\t\t{\n");
      out.write("\t\t\tbackground-color: #f44336;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("\t\t\tpadding: 14px 20px;\n");
      out.write("\t\t\tmargin: 8px 0;\n");
      out.write("\t\t\tborder: none;\n");
      out.write("\t\t\tcursor: pointer;\n");
      out.write("\t\t\twidth: 12.5%;\n");
      out.write("\t\t}\n");
      out.write("\t\th2\n");
      out.write("\t\t{\n");
      out.write("\t\t\tbackground-color: #4CAF50;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("\t\t\twidth: 40%;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput[type=text], input[type=password] \n");
      out.write("\t\t{\t\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\tpadding: 12px 20px;\n");
      out.write("\t\t\tmargin: 8px 0;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("\t<body>\n");
      out.write("\t<form action=\"insertion\" method=\"post\">\n");
      out.write("\n");
      out.write("\t<div class=\"company\">\n");
      out.write("\t\t\t<center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<center>\n");
      out.write("\t\t<table>\n");
      out.write("\t\t<col width=\"150\">\n");
      out.write("\t\t<col width=\"300\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><label><b>Name:</b></label>\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"uname\" placeholder=\"Name\" required><br>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><label><b>Email:</b></label>\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"uid\" placeholder=\"abc@xyz.com\" required><br>\n");
      out.write("\t\t</tr>\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><label><b>Password:</b></label>\n");
      out.write("\t\t\t<td><input type=\"password\" name=\"upass\" placeholder=\"Password\" required><br>\n");
      out.write("\t\t</tr>\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><label><b>Mobile number:</b></input>\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"umobileno\" placeholder=\"Mobile number\" required><br>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><label><b>I am:</b></label<> \n");
      out.write("\t\t\t<td><input type=\"radio\" name=\"iam\" value=\"Buyer/Owner\"> Buyer/Owner\n");
      out.write("\t\t\t<input type=\"radio\" name=\"iam\" value=\"Agent\"> Agent\n");
      out.write("\t\t\t<input type=\"radio\" name=\"iam\" value=\"Builder\"> Builder<br>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t</table>\n");
      out.write("\t\t<br><font size=\"2\">By Clicking Sign up, you agree to PN PROPERTY T & C</font><br>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<input type=\"submit\" value=\"Sign up\" name=\"signup\">\n");
      out.write("\t\t<a href=\"index.html\"><input type=\"button\" class=\"cancelbtn\" value=\"Cancel\"></a><br>\n");
      out.write(" \t\t</center>\n");
      out.write("\t</div>\n");
      out.write("\t</form>\n");
      out.write("            <br>");
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
      out.write("\t</body>\n");
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
