// Import modules
const express = require("express");
const {
	fetchPredictionByTicker,
} = require("../controllers/prediction.controller");

// Initalize router
const router = express.Router();

// @desc get all predictions
// @route /api/predictions
router.get("/api/predictions/:ticker", fetchPredictionByTicker);

module.exports = router;
