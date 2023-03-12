//get("/login") => render login page
//get("/") => render home

const router = require("express").Router();
const { post } = require("../models");

router.get("/", async (req, res) => {
  //find all post
  //use plain:true
  // send data back using res.render('home', data)
  //send the render handlebars.js template back as response
  res.render("homepage");
});

router.get("/login", async (req, res) => {
  // res.render("login")
});

router.get("/post/:id", async (req, res) => {
  //findpk
  //send back data
});

module.exports = router;
