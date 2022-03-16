// Import modules
const { NotFoundError } = require("../errors");
const Prediction = require("../models/Prediction");

// Get predictions
exports.getPredictionByTicker = async (req, res) => {
	const prediction = await Prediction.find({
		Ticker: req.params.ticker,
	});
	if (!prediction) {
		throw new NotFoundError("Cannot find prediction with this ticker");
	}
	return res.json({ success: true, prediction });
};
