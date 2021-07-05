/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
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
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/Modify_Doctor"})
public class Modify_Doctor extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      HttpSession session=request.getSession(true);
        try {
            /* TODO output your page here. You may use following sample code. */
          String id=request.getParameter("id");
      
        String S_Name=request.getParameter("S_name");
        String S_Des=request.getParameter("Desc");
        String Amount=request.getParameter("Amount");
        String Addr=request.getParameter("Addr");
        DbConnection db=new DbConnection();
        int id1=Integer.parseInt(id);
        
  
        String query="Update provider_doctors set D_Name='"+S_Name+"',D_Details='"+S_Des+"',Contact='"+Amount+"', Hos_Name='"+Addr+"' where S_No='"+id1+"'";
int i=db.Insert(query);
if(i>0)
{
  session.setAttribute("msg","Doctor Details Successfully Modified");
                    response.sendRedirect("Modify_Doctor.jsp");   
}
else
{
     session.setAttribute("msg","Doctor Details Can't Modified");
                    response.sendRedirect("Modify_Doctor.jsp"); 
}
        }
        catch(Exception e)
        {
            out.println(e);
        }
         finally {            
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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