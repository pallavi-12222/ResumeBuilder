<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume - Template 3</title>
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
        }
        .left-panel {
            width: 30%;
            background-color: #f9f9f9;
            padding: 20px;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .right-panel {
            width: 70%;
            padding: 20px;
            position: relative;
        }
        .resume-header {
            background-color: #54b9c5;
            color: #ffffff;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        .resume-header img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
            margin-bottom: 10px;
        }
        .contact-info {
            background-color: #f9f9f9;
            color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            flex-direction: column;
        }
        .contact-info h1 {
            font-size: 1.5rem;
            margin: 0;
        }
        .contact-info p {
            margin: 0;
            font-size: 0.9rem;
        }
        .resume-section {
            padding: 20px;
            border-bottom: 1px solid #ddd;
        }
        .resume-section h3 {
            font-size: 1.5rem;
            color: #54b9c5;
            margin-bottom: 20px;
        }
        .resume-section p {
            font-size: 1rem;
            margin: 0 0 10px;
        }
        .skills-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: start;
        }
        .skills-container .skill {
            text-align: center;
            width: 70px;
            margin-bottom: 10px;
        }
        .skills-container .skill i {
            font-size: 2rem;
            color: #54b9c5;
            margin-bottom: 5px;
        }
        .experience-container, .education-container {
            display: flex;
            flex-direction: column;
        }
        .experience-item, .education-item {
            margin-bottom: 20px;
            display: flex;
        }
        .experience-item .timeline-dot, .education-item .timeline-dot {
            width: 20px;
            height: 20px;
            background-color: #54b9c5;
            border-radius: 50%;
            position: relative;
            top: 10px;
            margin-right: 20px;
        }
        .experience-item .timeline-content, .education-item .timeline-content {
            border-left: 2px solid #54b9c5;
            padding-left: 20px;
            flex-grow: 1;
        }
        .experience-item span, .education-item span {
            display: block;
        }
        .experience-item span.date, .education-item span.date {
            font-size: 0.9rem;
            color: #6c757d;
        }
        .experience-item span.title, .education-item span.title {
            font-weight: bold;
            color: #333;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>

<div class="resume-container">
    <div class="left-panel">
        <div class="resume-header">
            <img src="data:image/jpeg;base64,${profilePhotoBase64}" alt="Profile Photo">
        </div>
        <div class="resume-section">
            <h3>Profile</h3>
            <p>${summary}</p>
        </div>
        <div class="resume-section">
            <h3>Awards</h3>
            <p>${awards}</p>
        </div>
        <div class="resume-section">
            <h3>Reference</h3>
            <p>${reference}</p>
        </div>
    </div>
    <div class="right-panel">
        <div class="contact-info">
            <h1>${name}</h1>
            <p><i class="fas fa-phone"></i> ${phone}</p>
            <p><i class="fas fa-envelope"></i> ${email}</p>
            <p><i class="fas fa-map-marker-alt"></i> ${address}</p>
        </div>
        <div class="resume-section experience-container">
            <h3>Experience</h3>
            <c:forEach var="exp" items="${experience}">
                <div class="experience-item">
                    <div class="timeline-dot"></div>
                    <div class="timeline-content">
                        <span class="date">Date not provided</span>
                        <span class="title">${exp}</span>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="resume-section education-container">
            <h3>Education</h3>
            <c:forEach var="edu" items="${education}">
                <div class="education-item">
                    <div class="timeline-dot"></div>
                    <div class="timeline-content">
                        <span class="date">Date not provided</span>
                        <span class="title">${edu}</span>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="resume-section">
            <h3>Skills</h3>
            <div class="skills-container">
                <c:forEach var="skill" items="${skills}">
                    <div class="skill">
                        <i class="fas fa-check-circle"></i>
                        <p>${skill}</p>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</body>
</html>
