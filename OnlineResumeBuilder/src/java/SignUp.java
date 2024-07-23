import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignUp extends HttpServlet {
    private static final Logger logger = Logger.getLogger(SignUp.class.getName());

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "pallavi")) {
                logger.log(Level.INFO, "Database connection established");

                // Insert user information into Login table
                String query = "INSERT INTO Login (name, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement pst = con.prepareStatement(query)) {
                    pst.setString(1, name);
                    pst.setString(2, email);
                    pst.setString(3, password);

                    int rowsInserted = pst.executeUpdate();
                    if (rowsInserted > 0) {
                        logger.log(Level.INFO, "User {0} registered successfully", email);
                        response.sendRedirect("index.html");
                    } else {
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet SignUp</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Registration failed, please try again.</h1>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                } catch (SQLIntegrityConstraintViolationException ex) {
                    logger.log(Level.WARNING, "Duplicate entry for email: {0}", email);
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet SignUp</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1>Email already registered. Please try a different email or log in.</h1>");
                    out.println("<p><a href='Login.html'>Login</a></p>");
                    out.println("</body>");
                    out.println("</html>");
                }
            } catch (SQLException ex) {
                logger.log(Level.SEVERE, "SQL Exception: " + ex.getMessage(), ex);
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + ex.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, "Class Not Found Exception: " + ex.getMessage(), ex);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal server error: " + ex.getMessage());
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
        return "SignUp Servlet";
    }
}
