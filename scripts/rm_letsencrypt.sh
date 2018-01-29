set -x
docker-compose -f /tmp/letsencrypt.yml down
docker-compose -f /tmp/letsencrypt.yml rm -f letsencrypt


