## TerraTest Installation

```
apt-get install gcc -y
```
```
wget https://dl.google.com/go/go1.20.1.linux-amd64.tar.gz
tar -xvf go1.20.1.linux-amd64.tar.gz
mv go /usr/local
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
```
```
go mod init
go mod init example.com/m
go mod tidy
go test -v
```