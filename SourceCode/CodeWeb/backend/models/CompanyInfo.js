const mongoose = require("mongoose");

const companyInfoSchema = new mongoose.Schema({
	Address: String,
	BasicEPS: Number,
	BookValue: Number,
	CompanyName: String,
	DilutedEPS: Number,
	Industry: String,
	Info: String,
	ListedShares: Number,
	MarketCapitalization: Number,
	OutstandingShares: Number,
	"P/E": Number,
	ROA: Number,
	ROE: Number,
	StockExchange: String,
	Ticker: String,
	TotalAssets: Number,
	Website: String,
});

const CompanyInfo = mongoose.model("CompanyInfos", companyInfoSchema);

module.exports = CompanyInfo;
