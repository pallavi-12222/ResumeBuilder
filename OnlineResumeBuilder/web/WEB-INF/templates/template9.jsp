<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resume - Template 9</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .resume-container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            background-color: #003366;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .header img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid #ffffff;
            margin-top: -50px;
            background-color: white;
        }
        .header h2 {
            font-size: 28px;
            font-weight: bold;
        }
        .header h4 {
            font-size: 18px;
            color: #cccccc;
        }
        .left-panel, .right-panel {
            padding: 15px;
        }
        .left-panel {
            background-color: #f9f9f9;
            border-right: 1px solid #ccc;
        }
        .right-panel {
            padding-left: 30px;
        }
        .section-title {
            font-size: 18px;
            font-weight: bold;
            color: #003366;
            margin-bottom: 15px;
            border-bottom: 2px solid #003366;
            padding-bottom: 5px;
        }
        .info-section p, .content-section p {
            margin: 0;
            font-size: 14px;
            line-height: 1.6;
        }
        .info-section h4, .content-section h4 {
            font-size: 16px;
            margin-bottom: 10px;
            color: #555;
        }
        .list-item {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="resume-container">
    <div class="header">
        <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="<%= request.getAttribute("name") %>'s Profile Photo">
        <h2><%= request.getAttribute("name") %></h2>
        <h4>Software Developer</h4>
    </div>
    <div class="row">
        <div class="col-md-4 left-panel">
            <div class="info-section">
                <h4 class="section-title">Contact Information</h4>
                <p><strong>Phone:</strong> <%= request.getAttribute("phone") %></p>
                <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
                <p><strong>Address:</strong> <%= request.getAttribute("address") %></p>
            </div>
            <div class="info-section">
                <h4 class="section-title">Areas of Expertise</h4>
                <ul>
                    <%
                        List<String> skills = (List<String>) request.getAttribute("skills");
                        for (String skill : skills) {
                            out.println("<li class='list-item'>" + skill + "</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        <div class="col-md-8 right-panel">
            <div class="content-section">
                <h4 class="section-title">Personal Profile</h4>
                <p><%= request.getAttribute("summary") %></p>
            </div>
            <div class="content-section">
                <h4 class="section-title">Work Experience</h4>
                <ul>
                    <%
                        List<String> experience = (List<String>) request.getAttribute("experience");
                        for (String exp : experience) {
                            out.println("<li class='list-item'>" + exp + "</li>");
                        }
                    %>
                </ul>
            </div>
            <div class="content-section">
                <h4 class="section-title">Academic History</h4>
                <ul>
                    <%
                        List<String> education = (List<String>) request.getAttribute("education");
                        for (String edu : education) {
                            out.println("<li class='list-item'>" + edu + "</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
