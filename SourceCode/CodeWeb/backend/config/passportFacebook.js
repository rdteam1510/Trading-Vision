const facebookStrategy = require("passport-facebook").Strategy;
const mongoose = require("mongoose");
const User = require("../models/User");

module.exports = function (passport) {
	passport.use(
		new facebookStrategy(
			{
				// pull in our app id and secret from our auth.js file
				clientID: "1331704267309742",
				clientSecret: "e4dfcf4821161ce9ce9e17a00480778c",
				callbackURL: "http://localhost:5000/facebook/callback",
				//All fields need taking
				profileFields: [
					"id",
					"displayName",
					"name",
					"gender",
					"picture.type(large)",
					"email",
				],
			}, // facebook will send back the token and profile
			async (accessToken, refreshToken, profile, done) => {
				const newUser = {
					userId: profile.id,
					displayName: profile.displayName,
					image: profile.photos[0].value,
					email: profile.emails[0].value,
				};
				try {
					let user = await User.findOne({ userId: profile.id });
					if (user) {
						done(null, user);
					} else {
						user = await User.create(newUser);
						done(null, user);
					}
				} catch (error) {
					console.log(error);
				}
			}
		)
	);
	passport.serializeUser((user, done) => {
		done(null, user.id);
	});

	passport.deserializeUser((id, done) => {
		User.findById(id, (err, user) => done(err, user));
	});
};
