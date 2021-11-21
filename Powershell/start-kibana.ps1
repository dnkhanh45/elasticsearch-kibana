# Pull kibana image
docker pull docker.elastic.co/kibana/kibana:7.15.1

# Buil kibana container
docker run `
--name kib01-test `
--net elastic `
--publish 5601:5601 `
--env "ELASTICSEARCH_HOSTS=http://es01-test:9200" docker.elastic.co/kibana/kibana:7.15.1