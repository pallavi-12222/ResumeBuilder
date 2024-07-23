 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resume Template 1</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
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
            margin-bottom: 20px;
            background-color: #f57c00;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
        }
        .resume-header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        .resume-header p {
            margin: 0;
        }
        .resume-section {
            margin-bottom: 20px;
        }
        .resume-section h2 {
            font-size: 1.5em;
            color: #f57c00;
            border-bottom: 2px solid #f57c00;
            padding-bottom: 5px;
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
            margin-bottom: 5px;
            color: #333;
        }
        .contact-info {
            text-align: center;
            margin-bottom: 20px;
        }
        .contact-info p {
            margin: 0;
            font-size: 1.1em;
        }
        .sidebar {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .sidebar h2 {
            font-size: 1.3em;
            color: #333;
            border-bottom: 2px solid #f57c00;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }
        .sidebar p {
            margin: 0;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="resume-container">
        <div class="resume-header">
            <h1><%= request.getAttribute("name") %></h1>
            <div class="contact-info">
                <p><strong>Email:</strong> <%= request.getAttribute("email") %> | <strong>Phone:</strong> <%= request.getAttribute("phone") %></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="resume-section">
                    <h2>Professional Summary</h2>
                    <p><%= request.getAttribute("summary") %></p>
                </div>
                <div class="resume-section">
                    <h2>Work Experience</h2>
                    <p><%= request.getAttribute("experience") %></p>
                </div>
                <div class="resume-section">
                    <h2>Education</h2>
                    <p><%= request.getAttribute("education") %></p>
                </div>
                <div class="resume-section">
                    <h2>Skills</h2>
                    <p><%= request.getAttribute("skills") %></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sidebar">
                    <h2>Address</h2>
                    <p><%= request.getAttribute("address") %></p>
                    <h2>Date of Birth</h2>
                    <p><%= request.getAttribute("dob") %></p>
                    <h2>References</h2>
                    <p>Available upon request</p>
                </div>
            </div>
        </div>
      
    </div>
                    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>