const mongoose = require("mongoose");

const favoriteSchema = new mongoose.Schema({
	UserId: { type: mongoose.Types.ObjectId, ref: "User" },
	CompanyId: { type: mongoose.Types.ObjectId, ref: "CompanyInfos"},
});

module.exports = mongoose.model("Favorite", favoriteSchema);
