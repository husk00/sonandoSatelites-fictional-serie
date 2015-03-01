while true
do
if [ "$(pidof pd)" ]
then
  echo Puredata was found.
else
  wmctrl -o 0,0
  echo Puredata not found.
  pd ../audioEngine/main.pd &
fi
sleep 5
wmctrl -o 1366,0
if [ "$(pidof gpredict)" ]
then
  echo GPredict-osc was found.
else
  echo Gpredict-osc not found.
  gpredict &
fi
done
