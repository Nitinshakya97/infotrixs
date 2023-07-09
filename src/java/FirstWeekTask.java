/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.eclipse.jdt.internal.compiler.apt.model.Factory;

/**
 *
 * @author GAMA
 */
public class FirstWeekTask extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FirstWeekTask</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FirstWeekTask at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  processRequest(request, response);
        String str = request.getQueryString();
        PrintWriter out = response.getWriter();
        Connection con = null;
        Statement st = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost/abc", "root", "Nitin");
            } catch (SQLException ex) {
                Logger.getLogger(FirstWeekTask.class.getName()).log(Level.SEVERE, null, ex);
            }
            st = con.createStatement();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FirstWeekTask.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FirstWeekTask.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (str.equals("signup") == true) {

            String eid = request.getParameter("Eid");
            String name = request.getParameter("Name");
            String add = request.getParameter("Address");
            String phone = request.getParameter("Phone_number");
//            if(phone.length()<=10)
//                out.print("ok");
//            else
//            {
//                    out.print("Please Enter valid no.");
//                    }
            String gen = request.getParameter("Gender");
            String email = request.getParameter("Email");
            String pass = request.getParameter("Pass");
//            
//            if(checkString(pass)==false)
//            {
//                    out.print("invalid password format");
//                    return;
//            }
            try {
                int n = st.executeUpdate("insert  into emp (Name,Address,Phone_number,Gender,Email,Pass) values('" + name + "','" + add + "','" + phone + "','" + gen + "','" + email + "','" + pass + "')");
                if (n > 0) {
                    out.print("saved");
                   

                } else {
                    out.print("not saved");

                }

            } catch (SQLException es) {
                out.print(es);
            }
        }
        else if (str.equals("login") == true) {
            String em = request.getParameter("Email");
            String ps = request.getParameter("Pass");

            int n = 0;
            try {
                ResultSet rs = st.executeQuery("select * from emp where Email='" + em + "' and Pass='" + ps + "'");

                if (rs.next() == true) {
                    out.print("true");
                } else {
                    out.print("false");

                }

            } catch (SQLException ex) {
                Logger.getLogger(FirstWeekTask.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
    
    
    
    
    
    
    
    
    
    private static boolean checkString(String str) {
    char ch;
    boolean capitalFlag = false;
    boolean lowerCaseFlag = false;
    boolean numberFlag = false;
    for(int i=0;i < str.length();i++) {
        ch = str.charAt(i);
        if( Character.isDigit(ch)) {
            numberFlag = true;
        }
        else if (Character.isUpperCase(ch)) {
            capitalFlag = true;
        } else if (Character.isLowerCase(ch)) {
            lowerCaseFlag = true;
        }
        if(numberFlag && capitalFlag && lowerCaseFlag)
            return true;
    }
    return false;
}
    }


