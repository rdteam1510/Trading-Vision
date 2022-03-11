// Import modules
const express = require("express");
const {
	fetchAllCompanyInfo,
	fetchCompanyInfoByTicker,
} = require("../controllers/companyinfo.controller");

////////////////////////////////
// Initialize Router
const router = express.Router();

// @desc Get all company info
// @route /api/companyinfo
router.get("/api/companyinfo", fetchAllCompanyInfo);

// @desc Get company info by ticker
// @route /api/companyinfo/:ticker
router.get("/api/companyinfo/:ticker", fetchCompanyInfoByTicker);

module.exports = router;
