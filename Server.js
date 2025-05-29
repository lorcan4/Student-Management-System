// بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ

const express = require("express");
const path = require("path");
const fs = require("fs");
const { v4: uuidv4 } = require("uuid");
const mysql = require("mysql");
const multer = require("multer");
const session = require("express-session");
const cors = require("cors");
const flash = require("connect-flash");
const bodyParser = require("body-parser");
const bcrypt = require("bcrypt");
const morgan = require("morgan");
// *** Path From anther Folder ***
const Connection = require("./models/db");
const isAuthenticated = require("./middleware/authMiddleware");
// *** Path From anther Folder ***
const app = express();
const PORT = 3400;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());

// MiddleWare
app.use(morgan("dev"));

// session
app.use(
  session({
    secret: "mySecretKey",
    resave: false,
    saveUninitialized: true,
  })
);
app.use(flash());

const authRoutes = require("./routes/authRoutes");
const studentRoutes = require("./routes/studentRoutes");
app.use("/",authRoutes)
app.use("/",studentRoutes)
app.listen(PORT, () => {
  console.log(`Server is Run On ${PORT}`);
});
