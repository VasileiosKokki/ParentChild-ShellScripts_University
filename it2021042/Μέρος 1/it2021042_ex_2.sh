#!/bin/bash
#Xrhsimopoioume thn echo gia na emfanisoume ston xrhsh to output ton entolon 1. date pou emfanizei analitika thn hmeromhnia kai ora. Xrhsimopoioume ta flags %d gia thn hmera, %m gia ton mhna, &Y gia ton xrono,%H gia thn ora,%M gia ta lepta. 2. netstat pou emfanizei analitika tis energes sindeseis. Xrhsimopoioume to flag -at gia na paroume mono tis tcp sindeseis, pipe | oste na parei h entolh wc -l san input to output ths netstat -at, thn entolh wc -l oste na metrhsoume to plhthos ton grammon, sinepos to plhthos ton energon tcp sindeseon



echo $(date +'%d-%m-%Y,%H:%M') $(netstat -at | wc -l)



echo $(date +'%d-%m-%Y,%H:%M') $(netstat -at | wc -l) > ~/.tcp_connections
sleep 1m


echo $(date +'%d-%m-%Y,%H:%M') $(netstat -at | wc -l) >> ~/.tcp_connections
sleep 1m


echo $(date +'%d-%m-%Y,%H:%M') $(netstat -at | wc -l) >> ~/.tcp_connections

