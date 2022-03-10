const mongoose = require("mongoose");
const validator = require("validator");

const userSchema = new mongoose.Schema(
	{
		// UserID,
		UserName: {
			type: String,
			minLength: 3,
			maxLength: 15,
			unique: true,
			trim: true,
			required: [true, "Username is required."],
		},
		Name: {
			type: String,
			minLength: 3,
			maxLength: 30,
			trim: true,
			required: [true, "Name is required."],
		},
		Email: {
			type: String,
			validate(value) {
				if (!validator.isEmail(value)) {
					throw new Error("Invalid email!");
				}
			},
			unique: true,
			lowercase: true,
			trim: true,
			required: [true, "Email is required."],
		},
	},
	{ timestamps: true }
);

const User = mongoose.model("User", userSchema);

module.exports = User;
