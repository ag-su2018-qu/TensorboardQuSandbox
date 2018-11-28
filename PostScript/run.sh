#!/bin/sh
i=$(sudo docker ps -aqf "name=project")
sudo docker exec $i /bin/sh -c 'cd /home/jovyan/**/FinanceCases/timeseries/Case_study/Swap_rate_forecast ; nohup tensorboard --logdir='.' --port 7920 &'
