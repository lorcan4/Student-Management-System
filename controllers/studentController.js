// studentController Students page  && show Students Data
const path = require("path");
const { v4: uuidv4 } = require("uuid");
const Connection = require("../models/db");
// student list Get
const Students_File = path.join(__dirname, "../views/student-list.ejs");
exports.Students_page_Get = async (req, res) => {
  const fullname = req.query.fullname;
  const lastName = fullname.trim().split(" ").pop();

  const sqlTutors = "SELECT * FROM pointstudents WHERE fullname = ?";
  const sqlUsers = "SELECT * FROM users WHERE lastName = ?";
  Connection.query(sqlTutors, [fullname], (err1, TutorResult) => {
    if (err1) {
      console.error("Error fetching users:", err1);
      return res.status(500).send("Failed to fetch users");
    }
    Connection.query(sqlUsers, [lastName], (err1, TutorUsers) => {
      res.render(Students_File, {
        success: req.flash("success"),
        error: req.flash("error"),
        TutorResult,
        TutorUsers,
      });
    });
  });
};
// student Form Get
const studentFormFile = path.join(__dirname, "../views/student-form.ejs");
exports.student_form_Get = async (req, res) => {
  const subject = req.query.subject;
  const sqlUsers = "SELECT * FROM users";
  const sqlTutors = "SELECT * FROM tutors WHERE subject = ?";
  Connection.query(sqlUsers, (err1, usersResult) => {
    if (err1) {
      console.error("Error fetching users:", err1);
      return res.status(500).send("Failed to fetch users");
    }
    Connection.query(sqlTutors, [subject], (err2, tutorsResult) => {
      if (err2) {
        console.error("Error fetching tutors:", err2);
        return res.status(500).send("Failed to fetch tutors");
      }
      res.render(studentFormFile, {
        success: req.flash("success"),
        error: req.flash("error"),
        users: usersResult,
        tutors: tutorsResult,
      });
    });
  });
};
// student list Post
exports.Students_form_Post = async (req, res) => {
  const { id, fullname, point, subject } = req.body;
  const checkSql =
    "SELECT * FROM pointstudents WHERE fullname = ? AND subject = ?";
  Connection.query(checkSql, [fullname, subject], (err, results) => {
    if (err) {
      console.error("Error checking student:", err);
      req.flash("error", "Error checking student");
      return res.redirect("/student_form");
    }
    // UPDATE if exists
    if (results.length > 0) {
      const updateSql =
        "UPDATE pointstudents SET point = ? WHERE fullname = ? AND subject = ?";
      Connection.query(updateSql, [point, fullname, subject], (err2) => {
        if (err2) {
          console.error("Error updating point:", err2);
          req.flash("error", "Failed to update point");
          return res.redirect(
            `/student_form?subject=${encodeURIComponent(subject)}`
          );
        }
        req.flash("success", "The Points updated successfully");
        return res.redirect(
          `/student_form?subject=${encodeURIComponent(subject)}`
        );
      });
    }
    // INSERT if not exists
    else {
      const newId = uuidv4();
      const insertSql =
        "INSERT INTO pointstudents (id, fullname, point,subject) VALUES (?, ?, ?, ?)";
      Connection.query(insertSql, [newId, fullname, point, subject], (err3) => {
        if (err3) {
          console.error("Error inserting point:", err3);
          req.flash("error", "Failed to add point");
          return res.redirect(
            `/student_form?subject=${encodeURIComponent(subject)}`
          );
        }
        req.flash("success", "Point added successfully");
        return res.redirect(
          `/student_form?subject=${encodeURIComponent(subject)}`
        );
      });
    }
  });
};
