const mongoose = require("mongoose");

const companyInfoSchema = new mongoose.Schema({
	Address: String,
	BasicEPS: String,
	BookValue: String,
	CompanyName: String,
	DilutedEPS: String,
	Industry: String,
	Info: String,
	ListedShares: String,
	MarketCapitalization: String,
	OutstandingShares: String,
	"P/E": String,
	ROA: String,
	ROE: String,
	StockExchange: String,
	Ticker: String,
	TotalAssets: String,
	Website: String,
});

const CompanyInfo = mongoose.model("CompanyInfos", companyInfoSchema);

module.exports = CompanyInfo;