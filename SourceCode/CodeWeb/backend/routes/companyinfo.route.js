////////////////////////////////
// Import modules
const express = require("express");
const {
	fetchAllCompanyInfo,
	fetchCompanyInfoByTicker,
} = require("../controller/companyinfo.controller");

////////////////////////////////
// Initialize Router
const router = express.Router();

////////////////////////////////
// All company info routes
router.get("/api/companyinfo", fetchAllCompanyInfo);
router.get("/api/companyinfo/:ticker", fetchCompanyInfoByTicker);

module.exports = router;
