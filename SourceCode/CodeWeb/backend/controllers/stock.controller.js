const Stock = require("../models/Stock.js");

exports.getAllStocks = async (req, res) => {
	try {
		const stocks = await Stock.find({}).limit(300);
		res.status(200).json({ stocks });
	} catch (error) {
		res.status(500).json({ msg: error });
	}
};

exports.getStockByTicker = async (req, res) => {
	try {
		const stock = await Stock.find({ Ticker: req.params.ticker });
		if (!stock) {
			return res.status(404).json({ msg: "Stock does not exist" });
		}
		res.status(200).json({ stock });
	} catch (error) {
		res.status(500).json({ msg: error });
	}
};
