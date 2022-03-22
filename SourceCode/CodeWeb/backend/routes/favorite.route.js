const express = require("express");
const router = express.Router();
const {
	getFavorites,
	createFavorite,
} = require("../controllers/favorite.controller");

// @desc Get all company info
// @method GET
// @route /api/companyinfo
router.route("/").get(getFavorites).post(createFavorite);

module.exports = router;
