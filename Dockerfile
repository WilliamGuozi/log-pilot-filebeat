FROM registry.cn-hangzhou.aliyuncs.com/acs/log-pilot:0.9.7-filebeat 

MAINTAINER "WilliamGuo <634206396@qq.com>"
WORKDIR /pilot/
COPY filebeat.tpl /pilot
ENTRYPOINT ["/pilot/entrypoint"]
