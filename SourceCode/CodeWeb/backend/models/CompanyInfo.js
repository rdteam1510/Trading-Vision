const mongoose = require("mongoose");

const companyInfo = new mongoose.Schema({});

const CompanyInfo = mongoose.model("CompanyInfo", companyInfo, "CompanyInfo");

module.exports = CompanyInfo;
