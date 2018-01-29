set -x
docker-compose -f /tmp/wordpress.yml down
docker-compose -f /tmp/wordpress.yml rm -f wordpress web mysql


