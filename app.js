const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send(`
    <html>
      <head>
        <title>DevOps Final Project</title>
      </head>
      <body>
        <h1>DevOps Final Project</h1>
        <p>The website is running successfully.</p>
        <p>Try visiting <a href="/health">/health</a> to check app status.</p>
      </body>
    </html>
  `);
});

app.get("/health", (req, res) => {
  res.status(200).json({ status: "ok" });
});

module.exports = app;
