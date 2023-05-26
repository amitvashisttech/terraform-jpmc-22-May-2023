## Install Jenkins & Configure 

```
apt-get update ; apt-get install default-jdk -y 
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
