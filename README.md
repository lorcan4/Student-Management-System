Create By Lorcan Solan :

student-management-system/
│
├── 📁 controllers/
│   ├── authController.js         # Handles login/logout
│   ├── studentController.js      # CRUD for students
│   └── reportController.js       # Generate/export PDF reports
│
├── 📁 models/
│   ├── db.js                     # MySQL or MongoDB connection
│   └── studentModel.js           # Student schema/queries
│
├── 📁 routes/
│   ├── authRoutes.js             # Routes for login/logout
│   └── studentRoutes.js          # Routes for student management
│
├── 📁 views/
│   ├── login.ejs
│   ├── dashboard.ejs
│   ├── student-list.ejs
│   └── student-form.ejs
│
├── 📁 public/
│   ├── css/
│   ├── js/
│   └── images/
│
├── 📁 exports/
│   └── student-report.pdf        # Exported PDFs go here
│
├── 📁 middleware/
│   └── authMiddleware.js         # Protect routes for admins/teachers
│
├── Server.js                        # Main server file
├── package.json
└── README.md


INSERT INTO tutors (id, subject, password) VALUES
('TUT1001', 'Mathematics', 'math12345'),
('PHY2024', 'Physics', 'physics2024'),
('CHEM77',  'Chemistry', 'chem!pass'),
('BIOX901', 'Biology', 'bioSecure99'),
('ENG7890', 'English', 'eng_pass_01'),
('HIST88',  'History', 'histo2025'),
('GEO3007', 'Geography', 'geo!map#77');

password for all users Students = 123

| Name     | Last Name | Email                                                             |
| -------- | --------- | ----------------------------------------------------------------- |
| Liam     | Turner    | [liam.turner@example.com](mailto:liam.turner@example.com)         |
| Emma     | Bennett   | [emma.bennett@example.com](mailto:emma.bennett@example.com)       |
| Noah     | Carter    | [noah.carter@example.com](mailto:noah.carter@example.com)         |
| Olivia   | Cooper    | [olivia.cooper@example.com](mailto:olivia.cooper@example.com)     |
| Elijah   | Foster    | [elijah.foster@example.com](mailto:elijah.foster@example.com)     |
| Ava      | Hayes     | [ava.hayes@example.com](mailto:ava.hayes@example.com)             |
| James    | Morgan    | [james.morgan@example.com](mailto:james.morgan@example.com)       |
| Sophia   | Reed      | [sophia.reed@example.com](mailto:sophia.reed@example.com)         |
| Benjamin | Brooks    | [benjamin.brooks@example.com](mailto:benjamin.brooks@example.com) |
| Mia      | Griffin   | [mia.griffin@example.com](mailto:mia.griffin@example.com)         |
| Lucas    | Simmons   | [lucas.simmons@example.com](mailto:lucas.simmons@example.com)     |
| Amelia   | Rivera    | [amelia.rivera@example.com](mailto:amelia.rivera@example.com)     |
| Ethan    | Jenkins   | [ethan.jenkins@example.com](mailto:ethan.jenkins@example.com)     |

