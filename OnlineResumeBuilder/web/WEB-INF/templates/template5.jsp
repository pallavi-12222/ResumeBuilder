<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 5</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .resume-container {
            width: 800px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            padding: 20px;
        }
        .header, .section {
            padding: 20px;
        }
        .header {
            background-color: #e63946;
            color: #fff;
            text-align: center;
        }
        .header img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin-bottom: 10px;
        }
        .header h1 {
            margin: 0;
            font-size: 2rem;
        }
        .header p {
            margin: 5px 0;
            font-size: 1rem;
        }
        .section-title {
            color: #e63946;
            font-size: 1.5rem;
            margin-bottom: 10px;
            border-bottom: 2px solid #e63946;
            display: inline-block;
        }
        .section-content {
            margin-bottom: 20px;
        }
        .experience-item, .education-item, .skills-item {
            margin-bottom: 15px;
        }
        .skills-container {
            display: flex;
            flex-wrap: wrap;
        }
        .skills-item {
            background-color: #e63946;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            margin: 5px;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<div class="resume-container">
    <div class="header">
        <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="Profile Photo">
        <h1>${name}</h1>
        <p>${email}</p>
        <p>${phone}</p>
        <p>${address}</p>
    </div>
    <div class="section">
        <div class="section-title">About Me</div>
        <div class="section-content">
            <p>${summary}</p>
        </div>
    </div>
    <div class="section">
        <div class="section-title">Work Experience</div>
        <div class="section-content">
            <%
                List<String> experience = (List<String>) request.getAttribute("experience");
                if (experience != null) {
                    for (String exp : experience) {
                        out.println("<div class='experience-item'><p>" + exp + "</p></div>");
                    }
                }
            %>
        </div>
    </div>
    <div class="section">
        <div class="section-title">Education</div>
        <div class="section-content">
            <%
                List<String> education = (List<String>) request.getAttribute("education");
                if (education != null) {
                    for (String edu : education) {
                        out.println("<div class='education-item'><p>" + edu + "</p></div>");
                    }
                }
            %>
        </div>
    </div>
    <div class="section">
        <div class="section-title">Software Skills</div>
        <div class="section-content skills-container">
            <%
                List<String> skills = (List<String>) request.getAttribute("skills");
                if (skills != null) {
                    for (String skill : skills) {
                        out.println("<div class='skills-item'>" + skill + "</div>");
                    }
                }
            %>
        </div>
    </div>
</div>

</body>
</html>
