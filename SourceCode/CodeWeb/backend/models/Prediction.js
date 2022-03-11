const mongoose = require("mongoose");

const predictionSchema = new mongoose.Schema({
	Ticker: { type: String },
	PredictedPrice: { type: Number },
	Date: { type: Date },
	TimeStamp: { type: Date },
});

const Prediction = mongoose.model("Prediction", predictionSchema);

module.exports = Prediction;
