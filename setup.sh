#!/bin/bash
cp -f port-tester-echo-udp.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable port-tester-echo-udp.service
systemctl start port-tester-echo-udp.service
iptables -t nat -A PREROUTING -p udp --dport 1:65535 -j REDIRECT --to-ports 7777