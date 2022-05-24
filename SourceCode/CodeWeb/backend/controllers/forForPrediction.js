const ForPrediction = require('../models/ForPrediction');
const Stock = require('../models/Stock');

const addDataForPrediction = async (se, convertDate) => {
	try {
		const stocks = await Stock.find({ StockExchange: se })
			.sort('-TimeStamp')
			.limit(100)
			.select('-_id Ticker Match StockExchange');
		stocks.map(async ({ Ticker, Match, StockExchange }) => {
			const data = {
				Ticker: Ticker,
				StockExchange: StockExchange,
				Time: convertDate,
				Close: Match,
			};
			await ForPrediction.create(data);
		});
	} catch (error) {
		console.log(error);
	}
};

module.exports = addDataForPrediction;
