const mongoose = require("mongoose");

const stockSchema = new mongoose.Schema({});

const Stocks = mongoose.model("Stocks", stockSchema, "Stocks");

module.exports = Stocks;
