const mongoose = require("mongoose");

const favoriteSchema = new mongoose.Schema({
	UserId: { type: mongoose.Types.ObjectId, ref: "User" },
	Ticker: { type: String, ref: "Stock" },
});

module.exports = mongoose.model("Favorite", favoriteSchema);
