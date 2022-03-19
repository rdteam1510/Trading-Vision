import React, {useState, useEffect} from 'react'
import ReminderInfo from '../../components/reminder/ReminderInfo'
import ReminderEmpty from '../../components/reminder/ReminderEmpty'
import useStyles from './style'
import axios from 'axios'


const Reminder = () => {
  const [reminders, setReminders] = useState([])

  useEffect(() => {
    retrieveReminders()
  },[])

  const retrieveReminders = async() =>{
    axios.get(`/api/reminders`)
    .then((response)=>{
      setReminders(response.data.reminder)
    })
  }
  console.log(reminders);
  return (
    <div>
      {reminders.length ===  0 ? (
        <ReminderEmpty/>
      ):(
        <ReminderInfo/>
      )}
      {/* <ReminderInfo/> */}
    </div>

  )
}

export default Reminder