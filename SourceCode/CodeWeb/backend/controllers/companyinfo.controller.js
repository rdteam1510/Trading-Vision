// Import Modules
const CompanyInfo = require("../models/CompanyInfo");

exports.getAllCompanyInfo = async (req, res) => {
	try {
		const companyinfo = await CompanyInfo.find({});
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
