const ForCandlestick = require("../models/ForCandlestick");
const Stock = require("../models/Stock");

const addDataForCandlestick = async () => {
	try {
		const stocks = await Stock.find({}).sort("-TimeStamp").limit(300);
		// .select("-_id");
		await ForCandlestick.create(stocks);
	} catch (error) {
		console.log(error);
	}
};

module.exports = addDataForCandlestick;
