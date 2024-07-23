import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Login extends HttpServlet {
    private static final Logger logger = Logger.getLogger(Login.class.getName());

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "pallavi")) {
                HttpSession session = request.getSession();
                logger.log(Level.INFO, "Attempting to log in user with email: {0}", email);

                // Check in Login table
                String queryLogin = "SELECT password, mobile FROM Login WHERE email=?";
                try (PreparedStatement pst = con.prepareStatement(queryLogin)) {
                    pst.setString(1, email);
                    try (ResultSet res1 = pst.executeQuery()) {
                        if (res1.next()) {
                            String loginPassword = res1.getString("password");
                            String mobile = res1.getString("mobile");
                            if (password.equals(loginPassword)) {
                                logger.log(Level.INFO, "Login successful for email: {0}", email);
                                // Set mobile number in session
                                session.setAttribute("mobile", mobile);
                                response.sendRedirect("templates.html");
                                return;
                            }
                        }
                    }
                }

                // If no matches, print an error message
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet log</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Incorrect email or password</h1>");
                out.println("</body>");
                out.println("</html>");
            } catch (SQLException ex) {
                logger.log(Level.SEVERE, "SQL Exception", ex);
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
            }
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, "Class Not Found Exception", ex);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal server error");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet";
    }
}
