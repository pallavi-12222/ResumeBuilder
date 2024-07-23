import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.Arrays;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/GenerateResumeServlet")
@MultipartConfig
public class GenerateResumeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form parameters
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String summary = request.getParameter("summary");
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");
            String website = request.getParameter("website");
            String linkedin = request.getParameter("linkedin");
            String twitter = request.getParameter("twitter");
            String template = request.getParameter("template");

            // Handle profile photo upload
            Part filePart = request.getPart("profilePhoto");
            InputStream fileContent = filePart.getInputStream();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fileContent.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            String base64Image = Base64.getEncoder().encodeToString(outputStream.toByteArray());

            // Parse experience, education, and skills fields
            List<String> experienceList = Arrays.asList(request.getParameter("experience").split("\\r?\\n"));
            List<String> educationList = Arrays.asList(request.getParameter("education").split("\\r?\\n"));
            List<String> skillsList = Arrays.asList(request.getParameter("skills").split(","));

            // Set attributes to pass to JSP
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("phone", phone);
            request.setAttribute("summary", summary);
            request.setAttribute("experience", experienceList);
            request.setAttribute("education", educationList);
            request.setAttribute("skills", skillsList);
            request.setAttribute("address", address);
            request.setAttribute("dob", dob);
            request.setAttribute("website", website);
            request.setAttribute("linkedin", linkedin);
            request.setAttribute("twitter", twitter);
            request.setAttribute("profilePhotoBase64", base64Image);

            // Construct the path to the JSP template based on the 'template' parameter
            String templatePage = "/WEB-INF/templates/template" + template + ".jsp";

            // Forward request to the JSP template
            request.getRequestDispatcher(templatePage).forward(request, response);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
            throw new ServletException("File upload failed: " + e.getMessage());
        }
    }
}
