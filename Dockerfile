FROM euleros:v2r9
RUN yum install -y nodejs npm
RUN groupadd -g 1003 tester && useradd -u 1003 -g 1003 tester

USER tester
WORKDIR /home/tester

RUN npm install express

COPY main.js main.js

EXPOSE 8000
ENTRYPOINT ["node", "/home/tester/main.js"]

#$ sudo docker tag custom_container_echo_example:latest swr.ap-southeast-1.myhuaweicloud.com/mobile_banking/test:latest
 #
 #$ sudo docker push swr.ap-southeast-1.myhuaweicloud.com/mobile_banking/test:latest
 #docker pull swr.ap-southeast-1.myhuaweicloud.com/mobile_banking/test:latest