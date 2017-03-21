sudo docker run -d \
  --name graphite \
  -p 8080:80 \
  -p 2003-2004:2003-2004\
  -p 2023-2024:2023-2024\
  -p 8125:8125/udp\
  -p 8126:8126\
  -v /home/nikasa/Graphite/.htpasswd:/etc/nginx/.htpasswd\
  -v /home/nikasa/Graphite/data:/opt/graphite/storage\
#  -v /home/nikasa/Graphite/configs:/opt/graphite/conf\
  -v /home/nikasa/Graphite/statsd:/opt/statsd\
  sitespeedio/graphite
