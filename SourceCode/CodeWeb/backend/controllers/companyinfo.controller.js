// Import Modules
const CompanyInfo = require("../models/CompanyInfo");

exports.getAllCompanyInfo = async (req, res) => {
	try {
		const { companyname, stockexchange, industry } = req.query;
		const queryObject = {};

		if (companyname) {
			queryObject.CompanyName = { $regex: companyname, $options: "i" };
		}

		if (stockexchange) {
			queryObject.StockExchange = {
				$regex: stockexchange,
				$options: "i",
			};
		}

		if (industry) {
			if (industry === "others") {
				queryObject.Industry = "";
			} else {
				queryObject.Industry = { $regex: industry, $options: "i" };
			}
		}

		console.log(queryObject);
		let result = CompanyInfo.find(queryObject);
		const companyinfo = await result;
		res.status(200).json({ success: true, companyinfo });
	} catch (error) {
		res.status(500).json({ msg: error });
	}
};

exports.getCompanyInfoByTicker = async (req, res) => {
	try {
		const companyinfo = await CompanyInfo.find({
			Ticker: req.params.ticker,
		});
		if (!companyinfo) {
			return res.status(404).json({ msg: "Company does not exist." });
		}
		res.status(200).json({ success: true, companyinfo });
	} catch (error) {
		res.status(500).json({ msg: error });
	}
};
