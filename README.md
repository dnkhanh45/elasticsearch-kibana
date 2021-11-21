# Elasticsearch and Kibana study

## Base images from [docker.elastic.co](https://www.docker.elastic.co/)
- [Elasticsearch 7.15.1](https://www.docker.elastic.co/r/elasticsearch/elasticsearch:7.15.1)
- [Kibana 7.15.1](https://www.docker.elastic.co/r/kibana/kibana:7.15.1)

## Data
Raw data from [Kaggle - YouTube Trending Video Dataset (updated daily)](https://www.kaggle.com/rsrishav/youtube-trending-video-dataset?select=US_youtube_trending_data.csv)

## Powershell:
Run each `*file.ps1` in folder Powershell in one terminal

## Docker compose:
```sh
cd ES-Kib
docker-compose up -d
```

- Image khanhdn4500/elasticsearch:0.0.1 was configured password `123456` for all users (including `elastic` and `kibana_system`)
- Image khanhdn4500/kibana:0.0.1 was configured password `123456` for user `kibana_system`
- `xpack.security.enabled` was set `true` in both configuration files elasticsearch.yml (for container named "es01-test") and kibana.yml (for container named "kib01-test")
- Log into elasticsearch at `localhost:9200` with one of these usernames `elastic`, `apm_system`, `kibana_system`, `logstash_system`, `beats_system`, `remote_monitoring_user` and password `123456`
- Log into kibana at `localhost:5601` with username `elastic` and password `123456`
- Some visualizations for the above dataset was created and added into a dashboard
