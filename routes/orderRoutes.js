const express = require("express");
const router = express.Router();
const Order = require("../models/orderModels");

// Endpoint: GET /api/users - Find all users (READ)
router.get("/", async function (req, res) {
  try {
    const users = await Order.findAll();
    res.status(200).json({ success: true, data: users });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// Endpoint: GET /api/users/:id - Find single user (READ)
router.get("/:id", async function (req, res) {
  try {
    const user = await Order.findById(req.params.id);
    if (!user) {
      return res.status(404).json({ success: false, error: "User not found" });
    }
    res.status(200).json({ success: true, data: user });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// Endpoint: POST /api/users - Add new user (CREATE)
router.post("/", async function (req, res) {
  try {
    const { customerName } = req.body;
    if (!customerName) {
      return res.status(400).json({ success: false, error: 'Field "customerName" is required.' });
    }

    const insertId = await Order.create(req.body);
    const newOrder = await Order.findById(insertId);

    res.status(201).json({ success: true, data: newOrder });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

module.exports = router;