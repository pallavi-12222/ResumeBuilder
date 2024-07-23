<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 4</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .resume-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            border-radius: 10px;
            overflow: hidden;
        }
        .left-panel {
            width: 30%;
            background-color: #333;
            color: #fff;
            padding: 20px;
        }
        .right-panel {
            width: 70%;
            padding: 20px;
        }
        .profile-photo {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .resume-header {
            background-color: #f9c74f;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .resume-header h1 {
            margin: 0;
            font-size: 1.8rem;
        }
        .resume-header p {
            margin: 5px 0;
        }
        .section-title {
            background-color: #f9c74f;
            color: #fff;
            padding: 10px;
            margin-bottom: 10px;
            text-transform: uppercase;
        }
        .section-content {
            margin-bottom: 20px;
        }
        .experience-item, .education-item {
            margin-bottom: 10px;
        }
        .skills-container {
            display: flex;
            flex-wrap: wrap;
        }
        .skill-item {
            background-color: #f9c74f;
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
    <div class="left-panel">
        <div class="resume-header">
            <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="Profile Photo" class="profile-photo">
            <h1>${name}</h1>
            <p>${jobTitle}</p>
        </div>
        <div class="section-title">Contact</div>
        <div class="section-content">
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>Phone:</strong> ${phone}</p>
            <p><strong>Address:</strong> ${address}</p>
        </div>
        <div class="section-title">Profile</div>
        <div class="section-content">
            <p>${summary}</p>
        </div>
        <div class="section-title">Skills</div>
        <div class="section-content skills-container">
            <%
                List<String> skills = (List<String>) request.getAttribute("skills");
                if (skills != null) {
                    for (String skill : skills) {
                        out.println("<div class='skill-item'>" + skill + "</div>");
                    }
                }
            %>
        </div>
    </div>
    <div class="right-panel">
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
        <div class="section-title">Awards</div>
        <div class="section-content">
            <p>${awards}</p>
        </div>
    </div>
</div>

</body>
</html>
