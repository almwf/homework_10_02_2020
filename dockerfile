FROM ubuntu:latest
ENV VAR1 '01 01 02 03 02' 
ENV VAR2 '00 00 40 01 40 01 25 02 63 01 32 05'
COPY ./block_state /scripts/block_state
COPY ./get_data.sh /scripts/get_data.sh
CMD cd /scripts/
CMD /scripts/get_data.sh









