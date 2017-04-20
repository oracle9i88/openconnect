FROM debian:testing-slim

RUN apt-get -y update
RUN apt-get -y install openconnect iptables
RUN apt-get -y clean

ADD hooks/nat-on /etc/vpnc/post-connect.d/
ADD hooks/nat-off /etc/vpnc/disconnect.d/

ADD connect.sh /root/
RUN chmod +x /root/connect.sh

CMD ["/root/connect.sh"]