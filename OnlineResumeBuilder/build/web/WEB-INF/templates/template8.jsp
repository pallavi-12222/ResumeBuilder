<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 8</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .resume-container {
            max-width: 800px;
            margin: auto;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            padding: 0;
            display: flex;
            flex-direction: row;
        }
        .left-panel {
            width: 35%;
            background-color: #d6c1c1;
            padding: 20px;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .right-panel {
            width: 65%;
            padding: 30px;
        }
        .resume-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .resume-header h1 {
            font-size: 2rem;
            margin: 0;
            color: #000000;
        }
        .resume-header h3 {
            font-size: 1rem;
            margin: 0;
            font-weight: 300;
            color: #333;
        }
        .contact-info {
            margin-top: 20px;
        }
        .contact-info p {
            margin: 5px 0;
            font-size: 0.9rem;
            color: #333;
        }
        .resume-section {
            margin-top: 20px;
        }
        .resume-section h3 {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 10px;
            border-bottom: 2px solid #e63946;
            padding-bottom: 5px;
        }
        .resume-section p {
            font-size: 0.9rem;
            margin: 0 0 10px;
        }
        .skills-container {
            list-style: none;
            padding-left: 0;
        }
        .skills-container li {
            background-color: #e63946;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            margin-bottom: 5px;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<div class="resume-container">
    <div class="left-panel">
        <div class="contact-info">
            <p><strong>Phone:</strong> ${phone}</p>
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>LinkedIn:</strong> ${linkedin}</p>
            <p><strong>Address:</strong> ${address}</p>
        </div>
        <div class="resume-section">
            <h3>Education</h3>
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
        <div class="resume-section">
            <h3>Pro Skills</h3>
            <ul class="skills-container">
                <%
                    List<String> skills = (List<String>) request.getAttribute("skills");
                    if (skills != null) {
                        for (String skill : skills) {
                            out.println("<li>" + skill + "</li>");
                        }
                    }
                %>
            </ul>
        </div>
    </div>
    <div class="right-panel">
        <div class="resume-header">
            <h1>${name}</h1>
            <h3>${position}</h3>
        </div>
        <div class="resume-section">
            <h3>Professional Profile</h3>
            <p>${summary}</p>
        </div>
        <div class="resume-section">
            <h3>Experience</h3>
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
    </div>
</div>

</body>
</html>
