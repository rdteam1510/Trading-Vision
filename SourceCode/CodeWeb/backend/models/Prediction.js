const mongoose = require("mongoose");

const predictionSchema = new mongoose.Schema({
	Ticker: { type: String },
	PredictedClose: { type: Number },
});

const Prediction = mongoose.model("Prediction", predictionSchema);

module.exports = Prediction;
