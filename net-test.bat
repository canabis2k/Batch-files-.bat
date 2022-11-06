:START
echo >>  testLAN.txt
ping -t -n 100 8.8.8.8 >> testLAN.txt
time /T >> testLAN.txt
GOTO START
