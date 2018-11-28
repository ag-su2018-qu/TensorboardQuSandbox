#!/bin/sh
i=$(sudo docker ps -aqf "name=project")
sudo docker exec $i /bin/sh -c 'cd /home/jovyan/**/TimeSeries/Case_study/Swap_rate_forecast ; nohup tensorboard --logdir='.' --port 7920 > /dev/null 2>&1 &'
sudo docker exec $i /bin/sh -c 'cd /home/jovyan/**/TimeSeries/Case_study/Temp_Anomalies ; nohup tensorboard --logdir='.' --port 7940 > /dev/null 2>&1 &'
