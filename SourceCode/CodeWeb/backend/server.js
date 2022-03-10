////////////////////////////////
// Import modules
const express = require("express");
const mongoose = require("mongoose");
const Stock = require("./models/Stocks");
const CompanyInfo = require("./models/CompanyInfo");
require("dotenv").config();

////////////////////////////////
// .ENV Variables
const PORT = process.env.PORT;

////////////////////////////////
// Connect MongoDB
mongoose
	.connect(process.env.MONGODB_STR_DEV)
	.then(() => console.log("Database is connected"))
	.catch((err) => console.log(err));

////////////////////////////////
// Initialize express()
const app = express();
app.use(express.json());

////////////////////////////////
// Import Routes
const stockRoutes = require("./routes/stock.route");
const companyinfoRoutes = require("./routes/companyinfo.route");

app.use(stockRoutes);
app.use(companyinfoRoutes);

////////////////////////////////
// Server listens
app.listen(PORT, () => console.log("Server is running..."));
