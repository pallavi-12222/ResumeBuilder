<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 50px;
        }
        .resume-container {
            background-color: #ffffff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .resume-section {
            margin-bottom: 20px;
        }
        .resume-section h3 {
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="container resume-container">
    <h1 class="text-center mb-4">Resume</h1>
    <div class="resume-section">
        <h3>Contact Information</h3>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Phone:</strong> ${phone}</p>
    </div>
    <div class="resume-section">
        <h3>Professional Summary</h3>
        <p>${summary}</p>
    </div>
    <div class="resume-section">
        <h3>Work Experience</h3>
        <p>${experience}</p>
    </div>
    <div class="resume-section">
        <h3>Education</h3>
        <p>${education}</p>
    </div>
    <div class="resume-section">
        <h3>Skills</h3>
        <p>${skills}</p>
    </div>
</div>

</body>
</html>
