// authRoutes => Login
const express = require("express");
const routes = express.Router();
const path = require("path");
const isAuthenticated = require("../middleware/authMiddleware");
const {
  admin_Add_New_Students_Post,
  admin_Add_New_Students_Get,
  login_Get,
  login_Post,
  login_Get_tutors,
  login_Post_tutors,
  change_Put_tutors,
  Delete_account_Users
} = require("../controllers/authController");
// Admin Page
routes.route("/admin").get(isAuthenticated,admin_Add_New_Students_Get);
// Admin Add New Students
routes.route("/add-new-students").post(isAuthenticated,admin_Add_New_Students_Post);
// Login Page
routes.route("/login").get(login_Get).post(login_Post)
// Login Page For tutors
routes.route("/login26-tutors45-099").get(login_Get_tutors).post(login_Post_tutors)
// Page For tutors
routes.route("/tutors").put(change_Put_tutors);
// Delete Users
routes.route("/delete-users/:id").post(isAuthenticated,Delete_account_Users);
// exports Routes
module.exports = routes;
