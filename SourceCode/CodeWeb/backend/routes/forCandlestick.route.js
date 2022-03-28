const express = require("express");
const router = express.Router();
const {
	getDataForCandlestick,
} = require("../controllers/forCandlestick.controller");

// @desc Get all data for draw candlestick
// @method GET
// @route /api/forcandlesticks
router.route("/").get(getDataForCandlestick);

module.exports = router;
