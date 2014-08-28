#!/bin/bash
for name in $(cat /usr/share/dnsenum/dns.txt);do
host $name.coalfire.com |grep "has address"|cut -d" " -f4
done

