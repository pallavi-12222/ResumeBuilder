<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resume Template 2</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .resume-container {
            background-color: #ffffff;
            padding: 30px;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 900px;
        }
        .resume-header {
            text-align: center;
            margin-bottom: 40px;
            background-color: #003366;
            color: #fff;
            padding: 50px 20px 30px;
            border-radius: 10px 10px 0 0;
            position: relative;
        }
        .resume-header img {
            border-radius: 50%;
            width: 180px;
            height: 180px;
            margin-bottom: 15px;
            position: relative;
            top: 30px;
            border: 5px solid #ffffff;
            background-color: #fff;
        }
        .resume-header h1 {
            margin-top: 90px;
            font-size: 2.5em;
        }
        .resume-header p {
            margin: 0;
            font-size: 1.2em;
        }
        .resume-section {
            margin-bottom: 20px;
            text-align: left;
        }
        .resume-section h2 {
            font-size: 1.5em;
            color: #003366;
            border-bottom: 2px solid #003366;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        .resume-section p, .resume-section ul {
            margin: 0;
            color: #333;
        }
        .resume-section ul {
            padding-left: 20px;
        }
        .resume-section ul li {
            list-style-type: disc;
        }
        .skills-icons {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .skills-icons .icon {
            font-size: 30px;
            margin: 10px;
            color: #003366;
        }
        .contact-info {
            margin-top: 20px;
            text-align: center;
        }
        .contact-info p {
            margin: 5px 0;
        }
        .contact-info a {
            color: #003366;
        }
    </style>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script> <!-- For icons -->
</head>
<body>
    <div class="resume-container">
        <div class="resume-header">
            <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="Profile Photo">
            <h1>${name}</h1>
            <p>${email} | ${phone}</p>
        </div>
        <div class="resume-section">
            <h2>About Me</h2>
            <p>${summary}</p>
        </div>
        <div class="resume-section">
            <h2>Education</h2>
            <p>${education}</p>
        </div>
        <div class="resume-section">
            <h2>Work Experience</h2>
            <p>${experience}</p>
        </div>
        <div class="resume-section">
            <h2>Skills</h2>
            <div class="skills-icons">
                <div class="icon"><i class="fab fa-html5"></i></div>
                <div class="icon"><i class="fab fa-css3-alt"></i></div>
                <div class="icon"><i class="fab fa-js"></i></div>
                <div class="icon"><i class="fab fa-python"></i></div>
                <div class="icon"><i class="fab fa-java"></i></div>
                <div class="icon"><i class="fab fa-react"></i></div>
                <div class="icon"><i class="fab fa-node-js"></i></div>
                <div class="icon"><i class="fab fa-git"></i></div>
                <div class="icon"><i class="fab fa-github"></i></div>
                <div class="icon"><i class="fab fa-docker"></i></div>
                <div class="icon"><i class="fab fa-aws"></i></div>
                <div class="icon"><i class="fab fa-linux"></i></div>
            </div>
        </div>
        <div class="resume-section">
            <h2>Contact Information</h2>
            <p>${address}</p>
            <p>Date of Birth: ${dob}</p>
            <div class="contact-info">
                <p><a href="${website}">${website}</a></p>
                <p><a href="${linkedin}"><i class="fab fa-linkedin"></i> ${linkedin}</a></p>
                <p><a href="${twitter}"><i class="fab fa-twitter"></i> ${twitter}</a></p>
            </div>
        </div>
    </div>
</body>
</html>
