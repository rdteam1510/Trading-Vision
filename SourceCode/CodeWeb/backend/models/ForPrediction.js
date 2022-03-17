const mongoose = require("mongoose");

const forPredictionSchema = new mongoose.Schema({
	Close: { type: Number },
	StockExchange: { type: String, enum: ["hose", "hnx", "upcom"] },
	Ticker: { type: String },
	Time: { type: Date },
});

module.exports = mongoose.model("Forprediction", forPredictionSchema);
