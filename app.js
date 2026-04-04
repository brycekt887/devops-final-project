const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send(`
    <html>
      <head>
        <title>DevOps Final Project</title>
        <style>
          body {
          font-family: Arial;
          background-color: #e6e6e6; /* light grey background */
          margin: 0;
          padding: 40px;
          }

          h1 {
            color: #333;
          }

          img {
            width: 300px;
            margin-top: 20px;
            border-radius: 10px;
          }

          .box {
            background: white;
            padding: 20px;
            margin: auto;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
            text-align: center;
          }
        </style>
      </head>

      <body>
        <div class="box">
          <h1>DevOps Final Project</h1>
          <p>The website is running successfully.</p>
          <p><a href="/health">Check Health Status</a></p>

          <img src="https://images.pexels.com/photos/33802176/pexels-photo-33802176.jpeg" />
        </div>
      </body>
    </html>
  `);
});

app.get("/health", (req, res) => {
  res.status(200).json({ status: "ok" });
});

module.exports = app;
