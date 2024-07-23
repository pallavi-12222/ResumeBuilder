import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import com.itextpdf.html2pdf.HtmlConverter;

@WebServlet("/DownloadResumeServlet")
public class DownloadResumeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve templateId parameter
        String templateIdString = request.getParameter("templateId");

        if (templateIdString == null || templateIdString.isEmpty()) {
            response.getWriter().println("Template ID parameter is required.");
            return;
        }

        int templateId;
        try {
            templateId = Integer.parseInt(templateIdString);
        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid template ID format.");
            return;
        }

        // Ensure templateId is within valid range (adjust as needed)
        if (templateId < 1 || templateId > 3) { // Adjust according to the number of templates you have
            response.getWriter().println("Template ID out of range.");
            return;
        }

        // Generate PDF based on templateId
        String templateFileName = "template" + templateId + ".jsp";
        String templateFilePath = getServletContext().getRealPath("/WEB-INF/templates/" + templateFileName);

        if (templateFilePath == null || templateFilePath.isEmpty()) {
            response.getWriter().println("Template file not found.");
            return;
        }

        String pdfFilePath = generatePdf(templateFilePath);

        if (pdfFilePath != null) {
            // Send generated PDF file as response
            sendPdfResponse(response, pdfFilePath);
        } else {
            response.getWriter().println("Error generating PDF.");
        }
    }

    private String generatePdf(String templateFilePath) {
        try {
            // Set output path for the generated PDF
            String outputPath = getServletContext().getRealPath("/generated/resume.pdf");

            // Convert HTML template to PDF using iText HtmlConverter
            HtmlConverter.convertToPdf(new File(templateFilePath), new File(outputPath));

            // Log success
            System.out.println("PDF successfully generated at: " + outputPath);
            return outputPath;
        } catch (IOException e) {
            e.printStackTrace();
            System.err.println("IOException during PDF generation: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Exception during PDF generation: " + e.getMessage());
        }
        return null;
    }

    private void sendPdfResponse(HttpServletResponse response, String pdfFilePath) throws IOException {
        File pdfFile = new File(pdfFilePath);

        if (pdfFile.exists()) {
            response.setContentType("application/pdf");
            response.addHeader("Content-Disposition", "attachment; filename=\"resume.pdf\"");

            java.nio.file.Path file = java.nio.file.Paths.get(pdfFile.getPath());
            byte[] data = java.nio.file.Files.readAllBytes(file);

            response.getOutputStream().write(data);
        } else {
            response.getWriter().println("PDF file not found.");
        }
    }
}
