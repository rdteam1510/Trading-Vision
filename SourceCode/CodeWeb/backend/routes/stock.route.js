////////////////////////////////
// Import modules
const express = require("express");
const {
	fetchAllStocks,
	fetchStockByTicker,
} = require("../controller/stock.controller");

////////////////////////////////
// Initialize Router
const router = express.Router();

////////////////////////////////
// All stock routers
router.get("/api/stocks", fetchAllStocks);
router.get("/api/stocks/:ticker", fetchStockByTicker);

module.exports = router;
