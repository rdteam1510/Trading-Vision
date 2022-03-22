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
    setInterval(()=> {
      axios.get(`/api/reminders`)
      .then((response) =>{
        setReminders(response.data.reminder)
      })
    }, 500)

  }

  return (
    <div>
      {reminders.length ===  0 ? (
        <ReminderEmpty/>
      ):(
        <ReminderInfo reminders={reminders}/>
      )}
  
    </div>

  )
}

export default Reminder