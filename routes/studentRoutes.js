// authRoutes => Login
const express = require("express");
const routes = express.Router();
const path = require("path");
const isAuthenticated = require("../middleware/authMiddleware");
const { Students_page_Get , student_form_Get , Students_form_Post } = require("../controllers/studentController");
// Students List Get 
routes.route("/Students-data").get(isAuthenticated,Students_page_Get);
// student_form 
routes.route("/student_form").get(isAuthenticated,student_form_Get); 
// Students student_form post
routes.route("/point-valid").post(isAuthenticated,Students_form_Post);

 
// exports Routes
module.exports = routes;
