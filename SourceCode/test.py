import datetime
import time

now = time.time()

transform = datetime.datetime.utcfromtimestamp(now) - datetime.timedelta(days=1)

# s = time.mktime(datetime.datetime.strptime("9:12 30/12/2021", "%H:%M %d/%m/%Y").timetuple())
# test = datetime.datetime.utcfromtimestamp(s).strftime('%H:%M')
print(transform)
