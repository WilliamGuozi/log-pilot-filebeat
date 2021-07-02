# log-pilot-filebeat

## Overview

For elk, add the function of multiline and optimize filebeat output, fix some bug of config.filebeat

## Get started

### docker version
```buildoutcfg
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
   williamguozi/log-pilot-filebeat:docker
```

### contianerd version
```buildoutcfg
docker run -d \
   --name log-pilot-filebeat \
   -v /run/k3s/containerd/containerd.sock:/var/run/containerd/containerd.sock \
   -v /etc/localtime:/etc/localtime \
   -v /:/host:ro \
   --cap-add SYS_ADMIN \
   -e PILOT_LOG_PREFIX=glinux \
   -e LOGGING_OUTPUT=logstash \
   -e LOGSTASH_HOST=logstash.glinux.top \
   -e LOGSTASH_PORT=5063 \
   --restart=always \
   williamguozi/log-pilot-filebeat:containerd
```


## Contributing

Thanks for my colleague [Wei Shuyu](https://github.com/wsy2220/log-pilot/tree/containerd) who rewrite log-pilot to support containerd of k3s!


