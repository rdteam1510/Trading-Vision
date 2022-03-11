// Import modules
const Prediction = require("../models/Prediction");

// Get predictions
exports.fetchPredictionByTicker = async (req, res) => {
	try {
		const prediction = await Prediction.find({
			Ticker: req.params.ticker,
		});
		return res.json({ success: true, prediction });
	} catch (error) {
		return res.status(404).json({ success: false, message: error.message });
	}
};
