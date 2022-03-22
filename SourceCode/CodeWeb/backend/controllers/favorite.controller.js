const Favorite = require("../models/Favorite");
const { StatusCodes } = require("http-status-codes");
const { NotFoundError, BadRequestError } = require("../errors");

exports.getFavorites = async (req, res) => {
	// res.send("This is getFavorites");
	const favorite = await Favorite.find({ UserId: req.user._id })
		.populate("Ticker")
		.sort("-TimeStamp")
		.limit(1);
	res.status(200).json({ favorite });
};

exports.createFavorite = async (req, res) => {
	req.body.UserId = req.user._id;
	const favorite = await Favorite.create(req.body);
	res.status(StatusCodes.CREATED).json({ favorite });
};
