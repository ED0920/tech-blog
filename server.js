const routes = require("./controllers");
const helpers = require("./utils/helpers");
const express = require("express");

const sequelize = require("./config/connection");
// const SequalizeStore = require("connect-session-sequelize")(session.store);

const app = express();
const port = process.env.PORT || 3001;

console.log("hello");

app.listen();

//Set up Handlebars.js engine with customm helpers

sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => console.log("Now listening"));
});
