FROM linuxserver/deluge
RUN apt-get update && apt-get install procps -y;\
 deluged;\
 pkill -9 deluged;\
 echo "shashank:superman:10" >> ~/.config/deluge/auth;\
 deluged;\
 deluge-console "config -s allow_remote True";\
 deluge-console "config allow_remote"
# pkill -9 deluged;
#CMD ["/bin/bash","deluged"]
