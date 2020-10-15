FROM alpine:3.12

MAINTAINER Josh Grancell <josh@joshgrancell.com>

# Packages are listed in alphabetical order, for ease of readability and ease of maintenance.
RUN  apk update \
  &&  apk add bash bind-tools busybox-extras curl ethtool git \
      iperf3 iproute2 iputils jq lftp mtr mysql-client \
      netcat-openbsd net-tools nmap perl-net-telnet \
      procps rsync socat tcpdump tshark wget \

# Start nginx in foreground:
CMD ["tail", "-f", "/dev/null"]
