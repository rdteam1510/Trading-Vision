// Import modules
const express = require("express");
const passport = require("passport");
const router = express.Router();

// Check if user is logged in or not
function isLoggedIn(req, res, next) {
	req.user ? next() : res.sendStatus(401);
}

// @desc Success login
// @method GET
// @route /auth/success
router.get("/auth/success", isLoggedIn, (req, res) => {
	res.status(200).json({ success: true, message: "LogInSuccess" });
});

// @desc Fail login
// @method GET
// @route /auth/failure
router.get("/auth/failure", (req, res) => {
	res.status(401).json({ success: false, message: "LogInFail" });
});

// @desc Logout User
// @method GET
// @route /auth/logout
router.get("/auth/logout", (req, res) => {
	req.logout();
	req.session.destroy();
	res.status(200).json({ success: true, message: "Logout" });
});

// @desc Auth with google
// @method GET
// @route /auth/google
router.get(
	"/auth/google",
	passport.authenticate("google", { scope: ["profile", "email"] })
);

// @desc Google auth callback
// @method GET
// @route /auth/google/callback
router.get(
	"/auth/google/callback",
	passport.authenticate("google", {
		successRedirect: "/auth/success",
		failureRedirect: "/auth/failure",
	})
);

module.exports = router;
