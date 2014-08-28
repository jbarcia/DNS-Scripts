#!/bin/bash
echo "Please enter Class C IP network range:"
echo "eg: 194.29.32"
read range
for ip in `seq 1 254`;do
host $range.$ip |grep "name pointer" |cut -d" " -f5
done

