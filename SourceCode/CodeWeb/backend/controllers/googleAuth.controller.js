const passport = require("passport");
const { UnauthenticatedError } = require("../errors");
const CustomAPIError = require("../errors/custom-error");

exports.login = (req, res) => {
	res.redirect("/auth/google");
};

exports.successLogin = (req, res) => {
	const user = req.user;
	res.json({ user });
};

exports.failedLogin = (req, res) => {
	throw new UnauthenticatedError("LoginFail");
};

exports.logout = (req, res) => {
	req.logout();
	req.session.destroy();
	res.status(200).json({ msg: "Logout" });
};

exports.googleAuth = passport.authenticate("google", {
	scope: ["profile", "email"],
});

exports.googleAuthCallback = passport.authenticate("google", {
	successRedirect: "/auth/success",
	failureRedirect: "/auth/login",
});
