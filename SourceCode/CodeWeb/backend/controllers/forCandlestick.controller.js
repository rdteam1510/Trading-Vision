const ForCandlestick = require("../models/ForCandlestick");
const Stock = require("../models/Stock");

exports.getDataForCandlestick = async (req, res) => {
	const forCandlestick = await ForCandlestick.find({});
	if (forCandlestick.length === 0) {
		return res.status(404).json({ message: "Cannot find any data" });
	}
	res.status(200).json(forCandlestick);
};

exports.stockDataForCandlestick = async (req, res) => {
	const stocks = await Stock.find({}).sort("-TimeStamp").limit(1);
	// const data = {	Ticker:
	// StockExchange:
	// Time:
	// Open:
	// High:
	// Low:
	// Close:
	// Volume: 	};
	res.status(200).json(stocks);
};
