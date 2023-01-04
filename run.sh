
i=0
start_time=$(date +%s)
while [ $i -lt 5 ]
do
  # Run the Python script and save the start time
  echo "LCD attempt $i"
  sleep 4
  ## TODO Change Path to ../run.py file
  /usr/bin/env python3 /home/USER/DWIN_T5UIC1_LCD_E3S1/run.py  > /tmp/lcd.log 2>&1 &
  script_pid=$!
  script_start_time=$(date +%s)
  # Wait for the Python script to finish
  wait $script_pid
  # Check the exit code of the Python script
  if [ $? -eq 0 ]
  then
    # The Python script exited normally
    i=$((i+1))
  else
    # The Python script exited with an error
    i=$((i+1))
  fi
  # Check the elapsed time
  script_elapsed_time=$(( $(date +%s) - $script_start_time ))
  elapsed_time=$(( $(date +%s) - $start_time ))
  if [ $script_elapsed_time -ge 30 ] || [ $elapsed_time -ge 30 ]
  then
    # The Python script took more than 30 seconds to run or the loop has run for more than 30 seconds
    start_time=$(date +%s)
    i=0
  fi
done
