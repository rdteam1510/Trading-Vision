// Import modules
const { NotFoundError } = require('../errors');
const Prediction = require('../models/Prediction');

// Get 5 predictions by Ticker
exports.getPredictionByTicker = async (req, res) => {
	try {
		const prediction = await Prediction.find({
			Ticker: req.params.ticker,
		})
			.sort({ TimeStamp: -1, Date: 1 })
			.limit(5);
		if (!prediction) {
			throw new NotFoundError('Cannot find prediction with this ticker');
		}
		return res.json({ success: true, prediction });
	} catch (error) {
		return res.status(500).json({ error: error.message });
	}
};

// Get all predictions by Ticker
exports.getAllPredictionByTicker = async (req, res) => {
	try {
		const prediction = await Prediction.find({
			Ticker: req.params.ticker,
		}).sort({ TimeStamp: -1, Date: 1 });
		if (!prediction) {
			throw new NotFoundError('Cannot find prediction with this ticker');
		}
		return res.json({ success: true, prediction });
	} catch (error) {
		return res.status(500).json({ error: error.message });
	}
};