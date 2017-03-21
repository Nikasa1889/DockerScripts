docker run -i -p 80:3000 \
  -e "GF_SERVER_ROOT_URL=http://grafana.server.name"  \
  -e "GF_SECURITY_ADMIN_PASSWORD=secret" \
  grafana/grafana
