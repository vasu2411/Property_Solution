package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pnestimate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
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
      out.write("h3\n");
      out.write("{\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("\t\t\tcolor: white;\n");
      out.write("                        width: 9%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>\n");
      out.write("    <ul>\n");
      out.write("        <li class=\"menu-item\"><a href=\"user.jsp\">Home</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"buy.jsp\">Buy</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"rent.jsp\">Rent</a></li>\n");
      out.write("\n");
      out.write("        <li class=\"menu-item\"><a class=\"active\" href=\"pnestimate.jsp\">PNestimate</a></li>\n");
      out.write("        <li class=\"menu-item\"><a class=\"redbg\" href=\"postfreeadd.jsp\">Post property FREE</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"loan.jsp\">Loan</a></li>\n");
      out.write("        <li class=\"menu-item\"><a href=\"howwework.jsp\">How we work</a></li>\n");
      out.write("        <li class=\"menu-item\" style=\"float:right\"><a href=\"index.html\">Logout</a></li>\n");
      out.write("        <li class=\"menu-item\" style=\"float:right\"><a href=\"contactus.jsp\">Contact us</a></li>\n");
      out.write("    </ul>\n");
      out.write("    <font size=\"5\"><b>PN estimate</b> is the special feature of PN Property and Finance Solution. In which if you\n");
      out.write("    want to get the <b>valuation</b> of your own property, you have to <b>fill up</b> following request form.\n");
      out.write("    after successful submission, our team will visit your property and will give you a <b>proper & perfect</b>\n");
      out.write("    valuation of your property.</font><br>\n");
      out.write("    <h3>Request form:</h3>\n");
      out.write("    <form action=\"saverequest.jsp\">\n");
      out.write("    <table>\n");
      out.write("        <tr>\n");
      out.write("            <td><b>Name :</b></td>\n");
      out.write("            <td></td>\n");
      out.write("            <td><input type=\"text\" name=\"reqname\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><b>Contact Number :</b></td>\n");
      out.write("            <td></td>\n");
      out.write("            <td><input type=\"text\" name=\"reqmob\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><b>Address :</b></td>\n");
      out.write("            <td></td>\n");
      out.write("            <td><textarea name=\"reqadd\" cols=\"50\" rows=\"10\"></textarea></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><b>Expected value:</b></td>\n");
      out.write("            <td></td>\n");
      out.write("            <td><input type=\"text\" name=\"reqval\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td></td>\n");
      out.write("            <td></td>\n");
      out.write("            <td><input type=\"submit\" value=\"submit\"><td>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("        \n");
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
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
