var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
require("dotenv").config();

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");

var app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);

// Catch all routes that don't match any other routes and return 404 error
app.use((req, res, next) => {
  next(createError(404, `Can't find ${req.originalUrl} on this server!`));
});

// error handler
app.use((err, req, res, next) => {
  // Handle other errors
  res.status(err.status || 500).json({
    status: err.status || 500,
    message: err.message || "Unknown Error",
  });
});

module.exports = app;
