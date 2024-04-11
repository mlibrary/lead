#!/usr/bin/env bash

directory=$(dirname "$0")

while getopts u:p:h:P:arb option
do
    case "${option}"
        in
        u)u=${OPTARG};;
        p)p=${OPTARG};;
        h)h=${OPTARG};;
        P)P=${OPTARG};;
        a)all="true";;
        r)root="false";;
        b)debug="true";;
    esac
done

shift "$(($OPTIND-1))"
d=$@
database="${d:=lead}"

user="${u:=root}"
password="${p:=}"
host="${h:=localhost}"
port="${P:=3306}"
all="${all:=false}"
root="${root:=true}"
debug="${debug:=false}"

if [[ $debug == "true" ]]; then
  echo "directory : $directory"
  echo "     user : $user"
  echo " password : $password"
  echo "     host : $host"
  echo "     port : $port"
  echo " database : $database"
  echo " add data : $all"
  echo " use root : $root"
  echo ""
fi

if [[ $root == "true" ]]; then
  mariadb -u root --host=$host --port=$port -e "CREATE DATABASE ${database} DEFAULT CHARACTER SET utf8"
  mariadb -u root --host=$host --port=$port -e "GRANT ALL ON ${database}.* TO ${user}@'%' IDENTIFIED by '${password}'"
fi
