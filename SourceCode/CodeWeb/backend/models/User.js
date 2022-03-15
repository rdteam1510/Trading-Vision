const mongoose = require("mongoose");
const validator = require("validator");

const userSchema = new mongoose.Schema(
	{
		googleId: {
			type: String,
			required: true,
		},
		displayName: {
			type: String,
			unique: true,
			trim: true,
			require: [true, "Name is required"],
		},
		firstName: {
			type: String,
			trim: true,
			required: [true, "firstName is required"],
		},
		lastName: {
			type: String,
			trim: true,
			required: [true, "lastName is required"],
		},
		image: {
			type: String,
		},
		email: {
			type: String,
			validate(value) {
				if (!validator.isEmail(value)) {
					throw new Error("Invalid email!");
				}
			},
			required: [true, "Email is required"],
		},
	},
	{ timestamps: true }
);

module.exports = mongoose.model("User", userSchema);
