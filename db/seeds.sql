INSERT INTO user (username,password)
VALUES  ("Gene", "1112223334"),
        ("BOB", "2223334445"),
        ("Louise", "3334445556"),
        ("Tina", "4445556667");


INSERT INTO post (post_title, post_body, username_id)
VALUES  ("JAVASCRIPT", "JS is programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS", 1),
        ("HTML" "HTML is s the standard markup language for Web pages", 2),
        ("NODE.JS" "NODE.JS is a back-end JavaScript runtime environment", 3),
        ("CSS" "CSS is used for styling a html page", 4);

INSERT INTO comment (comment, post_id, user_id)
VALUES  ("JAVASCRIPT is cool", 1, 2),
        ("HTML is awesome", 2, 3),
        ("NODE JS is easy", 3, 4),
        ("It is funn to style with css", 4, 1)


