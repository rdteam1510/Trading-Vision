const mongoose = require("mongoose");

const favStockSchema = new mongoose.Schema({
	// ListId,
	UserId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
	StockId: [{ type: mongoose.Schema.Types.ObjectId, ref: "Stocks" }],
});

const FavoriteStock = mongoose.model("FavoriteStock", favStockSchema);

module.exports = FavoriteStock;
