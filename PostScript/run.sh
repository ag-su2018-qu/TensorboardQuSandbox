#!/bin/sh
cd FinanceCases/timeseries/Case_study/Swap_rate_forecast
nohup tensorboard --logdir='.' --port 7920 &
