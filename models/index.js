const User = require("./user");
const Blog = require("./blog");
const Comment = require("./comment");

Blog.belongsTo(User, {
  foreignKey: "username_id",
});

Comment.belongsTo(Blog, {
  foreignKey: "post_id",
});

Comment.belongsTo(User, {
  foreignKey: "user_id",
});

module.exports = { User, Blog, Comment };
