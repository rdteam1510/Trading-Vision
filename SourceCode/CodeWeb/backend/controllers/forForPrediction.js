const ForPrediction = require('../models/ForPrediction');
const Stock = require('../models/Stock');

exports.addDataForPrediction = async (se) => {
	try {
		const stocks = await Stock.find({ StockExchange: se })
			.sort('-TimeStamp')
			.limit(100)
			.select('-_id Ticker Match StockExchange Time');
		stocks.map(async ({ Ticker, Match, StockExchange, Time }) => {
			const data = {
				Ticker: Ticker,
				StockExchange: StockExchange,
				Time: Time,
				Close: Match,
			};
			res.json(data);
		});
	} catch (error) {
		console.log(error);
	}
};

module.exports = addDataForPrediction;
