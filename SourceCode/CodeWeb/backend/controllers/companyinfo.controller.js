// Import modules
const CompanyInfo = require("../models/CompanyInfo");

// GET: get all company information
exports.fetchAllCompanyInfo = async (req, res) => {
	try {
		const companyinfo = await CompanyInfo.find();
		return res.json({ success: true, companyinfo });
	} catch (error) {
		return res.status(404).json({ success: false, message: error.message });
	}
};

// GET: get company info by ticker
exports.fetchCompanyInfoByTicker = async (req, res) => {
	try {
		const companyinfo = await CompanyInfo.find({
			Ticker: req.params.ticker,
		});
		return res.json({ success: true, companyinfo });
	} catch (error) {
		return res.status(404).json({ success: false, message: error.message });
	}
};
