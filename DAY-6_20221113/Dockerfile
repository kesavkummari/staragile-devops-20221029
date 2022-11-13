FROM ubuntu
RUN apt-get update 
ENV TZ=Asia/Kolkata
RUN apt-get update && apt-get install -y curl vim wget 
RUN apt-get update && apt-get install -y apache2 
RUN apt-get update && apt-get install -y apache2-utils 
RUN apt-get clean 
EXPOSE 80 
CMD [ "apache2ctl", "-D", "FOREGROUND" ]



