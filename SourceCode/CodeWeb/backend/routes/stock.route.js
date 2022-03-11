// Import modules
const express = require("express");
const {
	fetchAllStocks,
	fetchStockByTicker,
} = require("../controllers/stock.controller");

// Initialize Router
const router = express.Router();

// @desc Get all stocks
// @route /api/stocks
router.get("/api/stocks", fetchAllStocks);

// @desc Get stock by ticker
// @route /api/stocks/:ticker
router.get("/api/stocks/:ticker", fetchStockByTicker);

module.exports = router;
