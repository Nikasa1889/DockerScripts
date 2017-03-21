sudo docker run -d \
  --name graphite \
  -p 8080:80\
  -p 2003:2003\
  -p 2004:2004\
  -p 2023-2024:2023-2024\
  -p 8125:8125/udp\
  -p 8126:8126\
  -v /home/nikasa/Graphite/.htpasswd:/etc/nginx/.htpasswd\
  -v /home/nikasa/Graphite/data/whisper:/opt/graphite/storage/whisper\
  -v /home/nikasa/Graphite/storage-schemas.conf:/opt/graphite/conf/storage-schemas.conf\
  nikasa/graphite
  #-v /home/nikasa/Graphite/statsd:/opt/statsd\
