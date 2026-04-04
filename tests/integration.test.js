const request = require("supertest");
const app = require("../app");

describe("Home route", () => {
  test("GET / should return website content", async () => {
    const response = await request(app).get("/");

    expect(response.statusCode).toBe(200);
    expect(response.text).toContain("DevOps Final Project");
    expect(response.text).toContain("The website is running successfully.");
  });
});
