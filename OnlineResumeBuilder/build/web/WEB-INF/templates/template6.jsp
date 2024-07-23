<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 6</title>
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
        .header {
            background-color: #e63946;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 2rem;
        }
        .header p {
            margin: 5px 0;
            font-size: 1rem;
        }
        .section {
            padding: 20px;
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
        .experience-item, .education-item, .skills-item, .hobby-item {
            margin-bottom: 15px;
        }
        .skills-container, .hobbies-container, .social-links-container {
            display: flex;
            flex-wrap: wrap;
        }
        .skills-item, .hobby-item, .social-link-item {
            background-color: #e63946;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            margin: 5px;
            font-size: 0.9rem;
        }
        .social-link-item {
            display: flex;
            align-items: center;
            margin: 5px;
        }
        .social-link-item img {
            width: 20px;
            height: 20px;
            margin-right: 5px;
        }
        .left-column {
            width: 65%;
            float: left;
        }
        .right-column {
            width: 35%;
            float: right;
        }
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
    </style>
</head>
<body>

<div class="resume-container clearfix">
    <div class="header">
        <h1>${name}</h1>
        <p>Graphic Designer</p>
        <p>${address}</p>
        <p>${email} | ${phone}</p>
    </div>
    <div class="left-column">
        <div class="section">
            <div class="section-title">About Me</div>
            <div class="section-content">
                <p>${summary}</p>
            </div>
        </div>
        <div class="section">
            <div class="section-title">Experience</div>
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
    </div>
    <div class="right-column">
        <div class="section">
            <div class="section-title">Social Links</div>
            <div class="section-content social-links-container">
                <div class="social-link-item">
                    <img src="<%= request.getContextPath() %>/icons/linkedin-icon.png" alt="LinkedIn"> ${linkedin}
                </div>
                <div class="social-link-item">
                    <img src="<%= request.getContextPath() %>/icons/twitter-icon.png" alt="Twitter"> ${twitter}
                </div>
                <div class="social-link-item">
                    <img src="<%= request.getContextPath() %>/icons/website-icon.png" alt="Website"> ${website}
                </div>
            </div>
        </div>
        <div class="section">
            <div class="section-title">Skills</div>
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
        <div class="section">
            <div class="section-title">Hobbies</div>
            <div class="section-content hobbies-container">
                <%
                    List<String> hobbies = (List<String>) request.getAttribute("hobbies");
                    if (hobbies != null) {
                        for (String hobby : hobbies) {
                            out.println("<div class='hobby-item'>" + hobby + "</div>");
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>

</body>
</html>
