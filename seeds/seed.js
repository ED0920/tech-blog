const sequelize = require("../config/connection");
const { User } = require("../models");

const userData = require("./userData.json");
const blogData = require("./blogData.json");

const seedDatabase = async () => {
  await sequelize.sync({ force: true });

  const users = await User.bulkCreate(userData, {
    individualHooks: true,
    returning: true,
  });

  console.log(users);

  //   const posts = await post.bulkCreate(blogData, {
  //     individualHooks: true,
  //     returning: true,
  //   });

  process.exit(0);
};

seedDatabase();
