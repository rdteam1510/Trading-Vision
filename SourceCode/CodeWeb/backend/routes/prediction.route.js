// Import modules
const express = require('express');
const router = express.Router();
const {
	getPredictionByTicker,
	getAllPredictionByTicker,
} = require('../controllers/prediction.controller');

// @desc Get 5 predictions
// @method GET
// @route /api/predictions
router.route('/:ticker').get(getPredictionByTicker);

// @desc Get all predictions
// @method GET
// @route /api/predictions/all
router.route('/all/:ticker').get(getAllPredictionByTicker);

module.exports = router;
