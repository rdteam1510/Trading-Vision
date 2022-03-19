const mongoose = require("mongoose");

const connectDB = async () => {
	try {
		const conn = await mongoose.connect(process.env.MONGO_URI_DEV);
		console.log(`MongoDB connected: ${conn.connection.name}`);
		console.log(`----MongoDB connected: ${conn.connection.host}`);
	} catch (error) {
		console.log(error);
	}
};

module.exports = connectDB;
