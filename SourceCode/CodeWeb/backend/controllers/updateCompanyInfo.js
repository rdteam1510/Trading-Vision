const CompanyInfo = require('../models/CompanyInfo');
const CompanyInfoScript = require('../models/CompanyInfoScript');

const updateCompanyInfo = async () => {
	try {
		const companyInfoScript = await CompanyInfoScript.find({});
		for (const item of companyInfoScript) {
			await CompanyInfo.updateOne(
				{ Ticker: item.Ticker },
				{
					$set: {
						StockExchange: item.StockExchange,
						Ticker: item.Ticker,
						CompanyName: item.CompanyName,
						Address: item.Address,
						Website: item.Website,
						Industry: item.Industry,
						Info: item.Info,
						BasicEPS: item.BasicEPS,
						DilutedEPS: item.DilutedEPS,
						'P/E': item['P/E'],
						BookValue: item.BookValue,
						ListedShares: item.ListedShares,
						OutstandingShares: item.OutstandingShares,
						MarketCapitalization: item.MarketCapitalization,
						TotalAssets: item.TotalAssets,
						ROA: item.ROA,
						ROE: item.ROE,
					},
				}
			);
		}
		console.log('---END---');
	} catch (error) {
		console.log(error);
	}
};

module.exports = updateCompanyInfo;
