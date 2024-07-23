<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 7</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrQdFHRlj7DLgUfsNbpIfOgMUMyZCH8+E5sczPsD9MplzV9Qv/bFbACXfTGKflcXK/hW7cJlF3QkUsl34A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            width: 900px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            display: flex;
        }
        .sidebar {
            background-color: #e63946;
            color: #fff;
            width: 30%;
            padding: 20px;
        }
        .sidebar img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            display: block;
            margin: 0 auto 20px;
        }
        .sidebar .section {
            margin-bottom: 20px;
        }
        .sidebar .section-title {
            font-size: 1.2rem;
            margin-bottom: 10px;
            border-bottom: 2px solid #fff;
            display: inline-block;
        }
        .sidebar .contact-item,
        .sidebar .social-link-item,
        .sidebar .language-item,
        .sidebar .hobby-item {
            margin-bottom: 10px;
            font-size: 0.9rem;
        }
        .sidebar .social-link-item i {
            margin-right: 10px;
        }
        .main-content {
            width: 70%;
            padding: 20px;
        }
        .main-content .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .main-content .header h1 {
            margin: 0;
            font-size: 2rem;
            color: #e63946;
        }
        .main-content .header p {
            margin: 5px 0;
            font-size: 1rem;
            color: #555;
        }
        .main-content .section {
            margin-bottom: 20px;
        }
        .main-content .section-title {
            color: #e63946;
            font-size: 1.5rem;
            margin-bottom: 10px;
            border-bottom: 2px solid #e63946;
            display: inline-block;
        }
        .main-content .section-content {
            margin-bottom: 20px;
        }
        .main-content .item {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<div class="resume-container">
    <div class="sidebar">
        <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="Profile Photo">
        <div class="section">
            <div class="section-title">Contact</div>
            <div class="contact-item">Email: ${email}</div>
            <div class="contact-item">Phone: ${phone}</div>
            <div class="contact-item">Address: ${address}</div>
        </div>
        <div class="section">
            <div class="section-title">Follow Me</div>
            <div class="social-link-item"><i class="fab fa-linkedin"></i>LinkedIn: ${linkedin}</div>
            <div class="social-link-item"><i class="fab fa-twitter"></i>Twitter: ${twitter}</div>
            <div class="social-link-item"><i class="fas fa-globe"></i>Website: ${website}</div>
        </div>
        <div class="section">
            <div class="section-title">Languages</div>
            <div class="language-item">English</div>
            <div class="language-item">Spanish</div>
            <div class="language-item">French</div>
        </div>
        <div class="section">
            <div class="section-title">Hobbies</div>
            <div class="hobby-item">Photography</div>
            <div class="hobby-item">Traveling</div>
            <div class="hobby-item">Reading</div>
        </div>
    </div>
    <div class="main-content">
        <div class="header">
            <h1>${name}</h1>
            <p>Web Design & Developer</p>
        </div>
        <div class="section">
            <div class="section-title">About Me</div>
            <div class="section-content">
                <p>${summary}</p>
            </div>
        </div>
        <div class="section">
            <div class="section-title">Education</div>
            <div class="section-content">
                <%
                    List<String> education = (List<String>) request.getAttribute("education");
                    if (education != null) {
                        for (String edu : education) {
                            out.println("<div class='item'><p>" + edu + "</p></div>");
                        }
                    }
                %>
            </div>
        </div>
        <div class="section">
            <div class="section-title">Experience</div>
            <div class="section-content">
                <%
                    List<String> experience = (List<String>) request.getAttribute("experience");
                    if (experience != null) {
                        for (String exp : experience) {
                            out.println("<div class='item'><p>" + exp + "</p></div>");
                        }
                    }
                %>
            </div>
        </div>
        <div class="section">
            <div class="section-title">Skills</div>
            <div class="section-content">
                <%
                    List<String> skills = (List<String>) request.getAttribute("skills");
                    if (skills != null) {
                        for (String skill : skills) {
                            out.println("<div class='item'><p>" + skill + "</p></div>");
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>

</body>
</html>
