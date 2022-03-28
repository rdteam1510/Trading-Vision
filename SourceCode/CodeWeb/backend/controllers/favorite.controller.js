const { StatusCodes } = require("http-status-codes");
const Favorite = require("../models/Favorite");
const CompanyInfo = require("../models/CompanyInfo");

exports.getFavorites = async (req, res) => {
	const favorite = await Favorite.find({ UserId: req.user._id });
	if (favorite.length === 0) {
		return res.status(404).json({ message: "No favorite found" });
	}
	const arr = [];

	for (item of favorite) {
		const query = await CompanyInfo.aggregate([
			{ $match: { _id: item.CompanyId } },
			{
				$lookup: {
					from: "stocks",
					as: "Ticker",
					let: { ticker: "$Ticker" },
					pipeline: [
						{ $match: { $expr: { $eq: ["$$ticker", "$Ticker"] } } },
						{ $sort: { TimeStamp: -1 } },
						{ $limit: 1 },
						{ $project: { _id: 0 } },
					],
				},
			},
			{ $project: { Ticker: 1 } },
		]);
		arr.push({ _id: item._id, Ticker: query[0].Ticker });
	}
	res.status(200).json(arr);
};

exports.createFavorite = async (req, res) => {
	req.body.UserId = req.user._id;
	const favorite = await Favorite.create(req.body);
	res.status(StatusCodes.CREATED).json({ favorite });
};

exports.deleteFavorite = async (req, res) => {
	const favorite = await Favorite.findByIdAndDelete({ _id: req.params.id });
	if (!favorite) {
		throw new NotFoundError("No reminder with this id");
	}
	res.status(200).json({ favorite });
};
