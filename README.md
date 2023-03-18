# java-on-amazon-linux

## STEP 1

Create a ***t3.medium*** EC2 Instance with Amazon Linux ll

## STEP 2

```bash
#!bin/bash
yum update -y
yum install java-devel -y
yum install git -y
```

## STEP 3

```bash
readlink -f $(which java)
export JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64
export PATH=$JAVA_HOME/jre/bin:$PATH
```
