import React, { useState, useEffect } from "react";
import ReminderInfo from "../../components/reminder/ReminderInfo";
import ReminderEmpty from "../../components/reminder/ReminderEmpty";
import axios from "axios";
import Login from "../login/Login";

const Reminder = ({ user }) => {
	const [reminders, setReminders] = useState([]);

	useEffect(() => {
		retrieveReminders();
	}, []);

	const retrieveReminders = async () => {
		await setInterval(() => {
			axios.get(`/api/reminders`).then((response) => {
				setReminders(response.data.reminder);
			});
		}, 5000);
	};

	return (
		<div>
			{user ? (
				<>
					{reminders.length === 0 ? (
						<ReminderEmpty />
					) : (
						<ReminderInfo reminders={reminders} />
					)}
				</>
			) : (
				<Login />
			)}
		</div>
	);
};

export default Reminder;
