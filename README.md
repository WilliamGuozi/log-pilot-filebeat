# log-pilot-filebeat
for elk, add multiline to log-pilot to docker hub auto

# run command
docker run -d \
   --name log-pilot-filebeat \
   -v /var/run/docker.sock:/var/run/docker.sock \
   -v /etc/localtime:/etc/localtime \
   -v /:/host:ro \
   --cap-add SYS_ADMIN \
   -e PILOT_LOG_PREFIX=glinux \
   -e LOGGING_OUTPUT=logstash \
   -e LOGSTASH_HOST=logstash.glinux.top \
   -e LOGSTASH_PORT=5063 \
   --restart=always \
   williamguozi/log-pilot-filebeat:latest
