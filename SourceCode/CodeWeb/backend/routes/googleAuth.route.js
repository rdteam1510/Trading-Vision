// Import modules
const passport = require("passport");
const express = require("express");
const { route } = require("./stock.route");
const router = express.Router();

// Check if user is logged in or not?
function isLoggedIn(req, res, next) {
	req.user ? next() : res.sendStatus(401);
}

// @desc Success login status
// @route GET /auth/success
router.get("/auth/success", isLoggedIn, (req, res) => {
	res.status(200).json({ success: true, message: "LogInSuccess" });
});

// @desc Fail login status
// @route GET /auth/failure
router.get("/auth/failure", (req, res) => {
	res.status(401).json({ success: false, message: "LogInFail" });
});

// @desc Logout User
// @route /auth/logout
router.get("/auth/logout", (req, res) => {
	req.logout();
	req.session.destroy();
	res.status(200).json({ success: true, message: "Logout" });
});

// @desc Auth with google
// @route GET /auth/google
router.get(
	"/auth/google",
	passport.authenticate("google", { scope: ["profile", "email"] })
);

// @desc Google auth callback
// @route GET /auth/google/callback
router.get(
	"/auth/google/callback",
	passport.authenticate("google", {
		successRedirect: "/auth/success",
		failureRedirect: "/auth/failure",
	})
);

module.exports = router;
