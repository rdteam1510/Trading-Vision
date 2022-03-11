// Import modules
const Stock = require("../models/Stocks");

// GET: get all stocks
exports.fetchAllStocks = async (req, res) => {
	try {
		const stocks = await Stock.find();
		return res.json({ success: true, stocks });
	} catch (error) {
		return res.status(404).json({ success: false, message: error.message });
	}
};

// GET: get stock by ticker
exports.fetchStockByTicker = async (req, res) => {
	try {
		const stock = await Stock.find({ Ticker: req.params.ticker });
		return res.json({ success: true, stock });
	} catch (error) {
		return res.status(404).json({ success: false, message: error.message });
	}
};
