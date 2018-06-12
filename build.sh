apk update 
apk add go git gcc libc-dev

mkdir -p /root/go/src/golang.org/x
cd    /root/go/src/golang.org/x 
git   clone https://github.com/golang/tools --depth 1 
git   clone https://github.com/golang/net   --depth 1

mkdir -p /root/go/src/github.com/golang
cd    /root/go/src//github.com/golang 
git   clone https://github.com/golang/protobuf --depth 1

mkdir -p /root/go/src/github.com/drone
cd    /root/go/src//github.com/drone
git   clone https://github.com/drone/drone-ui --depth 1
git   clone https://github.com/drone/drone --depth 1

cd    /srv
go    build github.com/drone/drone/cmd/drone-agent  
go    build github.com/drone/drone/cmd/drone-server 

rm    -rf /root/go
apk   del go git gcc


