FROM node:12-slim
ENV accessKeyId="请填写你的阿里云accessKey Id" accessKeySecret="请填写你的阿里云accessKeySecret" domain="请填写你的阿里云域名 例如baidu.com" subDomain="请填写子域名 例如homenas" checkTime="请填写检测的间隔，不可小于60"
RUN npm install ali-ddns -g
CMD ddns --accessKeyId=${accessKeyId} --accessKeySecret=${accessKeySecret} --domain=${domain} --subDomain=${subDomain} --checkTime=${checkTime}