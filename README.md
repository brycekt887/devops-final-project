# DevOps Final Project

## Overview
This project is a simple Node.js web application built to demonstrate DevOps principles including testing, containerization, CI/CD, and cloud deployment.

## Features
- Homepage that displays a running message
- Health check endpoint (/health)
- Unit and integration tests
- Docker container support
- GitHub Actions build pipeline

## How to Run Locally

Clone the repo:
git clone https://github.com/brycekt887/devops-final-project.git

Install dependencies:
npm install

Run tests:
npm test

Start the app:
npm start

Open in browser:
http://localhost:3000

## Docker

Build the image:
docker build -t devops-final-project .

Run the container:
docker run -p 3000:3000 devops-final-project

