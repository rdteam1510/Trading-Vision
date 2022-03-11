const { timeStamp } = require("console");
const mongoose = require("mongoose");

const Reminder = new mongoose.Schema(
	{
		//ReminderId,
		UserId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
		StockId: { type: mongoose.Schema.Types.ObjectId, ref: "Stocks" },
		Content: { type: String, trim: true },
	},
	{ timeStamp: true }
);
