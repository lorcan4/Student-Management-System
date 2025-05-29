// authController Add New Students && Login Page
const path = require("path");
const bcrypt = require("bcrypt");
const { v4: uuidv4 } = require("uuid");
const Connection = require("../models/db");
// Dashboard has Add New Students GET
const dashboard = path.join(__dirname, "../views/dashboard.ejs");
exports.admin_Add_New_Students_Get = async (req, res) => {
  const sql = "SELECT * FROM users";
  const sqlPoints = "SELECT * FROM pointstudents ";
  Connection.query(sql, async (err, resultUsers) => {
    if (err) {
      console.error("Error fetching account:", err);
      return res.status(500).send("Failed to fetch account");
    }
    Connection.query(sqlPoints, (err2, resultPoints) => {
      if (err2) {
        console.error("Error fetching PointsUsers:", err2);
        return res.status(500).send("Failed to fetch PointsUsers");
      }
      res.render(dashboard, {
        success: req.flash("success"),
        error: req.flash("error"),
        resultUsers,
        resultPoints,
      });
    });
  });
};
// Dashboard Delete account Users
exports.Delete_account_Users = async (req, res) => {
  const id = req.params.id;
  const getUserSql = "SELECT name, lastName FROM users WHERE id = ?";
  const deleteUserSql = "DELETE FROM users WHERE id = ?";
  const deletePointsSql = "DELETE FROM pointstudents WHERE fullname = ?";
  Connection.query(getUserSql, [id], (err, results) => {
    if (err) {
      console.error("Error fetching user:", err);
      return res.status(500).send("Failed to fetch user");
    }
    if (results.length === 0) {
      req.flash("error", "User not found");
      return res.redirect("/admin");
    }
    const fullname = results[0].name + " " + results[0].lastName;
    Connection.query(deleteUserSql, [id], (err2) => {
      if (err2) {
        console.error("Error deleting user:", err2);
        return res.status(500).send("Failed to delete user");
      }
      Connection.query(deletePointsSql, [fullname], (err3) => {
        if (err3) {
          console.error("Error deleting points:", err3);
        }
        req.flash("success", "Account and points deleted");
        return res.redirect("/admin");
      });
    });
  });
};

// Dashboard has Add New Students POST
exports.admin_Add_New_Students_Post = async (req, res) => {
  const id = uuidv4();
  const { name, lastName, studentClass, email, password } = req.body;
  const hashed = await bcrypt.hash(password, 10);
  const sql = `
    INSERT INTO users (name, lastName, studentClass, email, password, id)
    VALUES (?, ?, ?, ?, ?, ?)
  `;
  const values = [name, lastName, studentClass, email, hashed, id];
  Connection.query(sql, values, (err) => {
    if (err) {
      console.error("Error inserting student:", err);
      return req.flash("error", "No item added, there is an error");
    }
    req.session.userId = id;
    req.flash("success", "A New Student has been added");
    res.redirect("/admin");
  });
};
// Login Page GET Students (Login)
const login = path.join(__dirname, "../views/login.ejs");
exports.login_Get = async (req, res) => {
  res.render(login, {
    success: req.flash("success"),
    error: req.flash("error"),
  });
};
// Login Page Post Check For Students (Login)
exports.login_Post = async (req, res) => {
  const { email, password } = req.body;
  // 🔐 Admin login (hardcoded)
  const id = "123";
  if (email === "mcdochvk@gmail.com" && password === "admin123") {
    req.flash("success", "Admin logged in successfully.");
    req.session.userId = id;
    return res.redirect("/admin");
  }

  const sql = "SELECT * FROM users";
  Connection.query(sql, async (err, result) => {
    if (err) {
      console.error("Error fetching account:", err);
      return res.status(500).send("Failed to fetch account");
    }
    const user = result.find((data) => data.email === email);
    if (!user) {
      req.flash("error", "Invalid email or password.");
      return res.redirect("/login");
    }
    const isMatch = await bcrypt.compare(password, user.password);
    let fullname = user.name + " " + user.lastName;

    if (isMatch) {
      req.session.userId = user.id;
      req.flash("success", "Logged in successfully.");
      return res.redirect(
        `/Students-data?fullname=${encodeURIComponent(fullname)}`
      );
    } else {
      req.flash("error", "Invalid email or password.");
      return res.redirect("/login");
    }
  });
};
// Login Page GET tutors (Login)
const tutorsFile = path.join(__dirname, "../views/login-tutors.ejs");
exports.login_Get_tutors = async (req, res) => {
  res.render(tutorsFile, {
    success: req.flash("success"),
    error: req.flash("error"),
  });
};
// Login Page Post Check For tutors (Login)
exports.login_Post_tutors = async (req, res) => {
  const { subject, password } = req.body;
  const sql = "SELECT * FROM tutors";
  Connection.query(sql, async (err, result) => {
    if (err) {
      console.error("Error fetching account:", err);
      return res.status(500).send("Failed to fetch account");
    }
    const user = result.find(
      (data) => data.password === password && data.subject === subject
    );
    if (!user) {
      req.flash("error", "Invalid email or password.");
      return res.redirect("/login26-tutors45-099");
    }
    if (user) {
      req.session.userId = user.id;
      req.flash("success", "Logged in successfully.");
      return res.redirect(
        `/student_form?subject=${encodeURIComponent(user.subject)}`
      );
    } else {
      req.flash("error", "Invalid ID or password.");
      return res.redirect("/login26-tutors45-099");
    }
  });
};
// Change Password (From admin page)
exports.change_Put_tutors = async (req, res) => {
  const { subject, password } = req.body;
  console.log({ subject, password });
  const sql = "UPDATE tutors SET password = ? WHERE subject = ?";
  Connection.query(sql, [password, subject], (err) => {
    if (err) {
      console.error("Error updating password:", err);
      return res.status(500).json({ message: "Password update failed" });
    }
    res.status(200).json({ message: "Password updated successfully" });
  });
};
