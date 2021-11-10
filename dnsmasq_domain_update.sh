#! /bin/bash
#进入dnsmasq配置目录
cd /etc/dnsmasq.d/
#下载分流conf
curl -s https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf|sed 's/114.114.114.114/223.5.5.5/g' > domains.china.conf
curl -s https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/apple.china.conf|sed 's/114.114.114.114/223.5.5.5/g' > apple.conf
curl -s https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/bogus-nxdomain.china.conf > nxdomain.china.conf
#重启dnsmasq
systemctl restart dnsmasq