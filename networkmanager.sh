#! /bin/bash

 
echo "Enter ip address : ";
read ip;
echo "Enter mask : ";
read mask;
echo "Enter gateway";
read gateway;
echo "Enter dns";
read dns;
echo "TYPE='Ethernet'">>/etc/sysconfig/network-scripts/ifcfg-enp0s3

TYPE="Ethernet"
PROXY_METHOD="none"
BROWSER_ONLY="no"
BOOTPROTO="static"
IPV4_FAILURE_FATAL="no"
NAME="enp0s3"
DEVICE="enp0s3"
ONBOOT="yes"
IPADDR=$ip
NENMASK=$mask
GATEWAY=$gateway
DNS1=$dns
systemctl restart network;

