## Install Jenkins & Configure 

```
apt-get update ; apt-get install default-jdk -y 
```


## On CentOS or Amazon Linux 
```
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
yum localinstall jdk-17_linux-x64_bin.rpm
java --version 

```


## Download Jenkins 
```
wget https://mirrors.jenkins.io/war-stable/latest/jenkins.war
```

## Start Jenkins Instance 
```
java -jar jenkins.war --httpPort=8081 &
```

## Jenkins Setup 

## Step1 : Open Jenkins URL [http://yourmachineip:8081 ]
## Step2 : Supply Defualt Credentials 
## Step3 : Install Suggested Plugins 
## Step4 : Configure Default URL 
## Step5 : Create a Login / Admin User. 
