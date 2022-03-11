const mongoose = require("mongoose");

const stockSchema = new mongoose.Schema({
	Ceiling: Number,
	Floor: Number,
	Highest: Number,
	Lowest: Number,
	Match: Number,
	Previous: Number,
	StockExchange: String,
	Ticker: String,
	Time: Number,
	TimeStamp: Number,
	Volume: Number,
});

const Stocks = mongoose.model("Stocks", stockSchema);

module.exports = Stocks;
