FROM alpine:3.7
RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
COPY ./build.sh /root/build.sh
COPY ./run.sh   /root/run.sh
RUN  sh /root/build.sh


ENV DATABASE_DRIVER=sqlite3
ENV DATABASE_CONFIG=/var/lib/drone/drone.sqlite
ENV GODEBUG=netdns=go
ENV XDG_CACHE_HOME /var/lib/drone
	
EXPOSE 8000 9000 80 443

CMD ["sh","/root/run.sh"]
