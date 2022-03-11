////////////////////////////////
// Import modules
const express = require("express");
const mongoose = require("mongoose");
const morgan = require("morgan");
const connectDB = require("./config/db");
const dotenv = require("dotenv");
const passport = require("passport");
const session = require("express-session");
const MongoStore = require("connect-mongo")(session);

////////////////////////////////
// Load config
dotenv.config({ path: "./config/config.env" });
require("./config/passport")(passport);
const PORT = process.env.PORT || 8000;

// Connect MongoDB
connectDB();

// Initialize express()
const app = express();

// Sessions
app.use(
	session({
		secret: "keyboard cat",
		resave: false,
		saveUninitialized: false,
		store: new MongoStore({ mongooseConnection: mongoose.connection }),
	})
);

////////////////////////////////
// Middleware
app.use(express.json());
app.use(morgan("dev"));
app.use(passport.initialize());
app.use(passport.session());

////////////////////////////////
// Import Routes
const stockRoutes = require("./routes/stock.route");
const companyinfoRoutes = require("./routes/companyinfo.route");
const googleRoutes = require("./routes/googleAuth.route");

app.use(stockRoutes);
app.use(companyinfoRoutes);
app.use(googleRoutes);

////////////////////////////////
// Server listens
app.listen(PORT, () => console.log(`Server is running on ${PORT}`));
