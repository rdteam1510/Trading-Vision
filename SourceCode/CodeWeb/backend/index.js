const express = require("express");
const mongoose = require("mongoose");
const CompanyInfo = require("./models/CompanyInfo");
const Stocks = require("./models/Stocks");

const app = express();

app.use(express.json());

mongoose
	.connect("mongodb+srv://tradingvision:123@cluster0.4fh3n.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-fyx376-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true")
	.then(() => {
		console.log("Database is connected");
	})
	.catch((err) => {
		console.log(err);
	});

const PORT = process.env.PORT || 4040;

// Show all Company Info
app.get("/companyinfo", async (req, res) => {
	try {
		const companyInfos = await CompanyInfo.find();
		return res.json({ success: true, companyInfos });
	} catch (error) {
		return res.status(204).json({ success: false, message: error.message });
	}
});

// Show all stocks
app.get("/stocks", async (req, res) => {
	try {
		const stocks = await Stocks.find().limit(300);
		return res.json({ success: true, stocks });
	} catch (error) {
		return res.status(204).json({ success: false, message: error.message });
	}
});

app.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
