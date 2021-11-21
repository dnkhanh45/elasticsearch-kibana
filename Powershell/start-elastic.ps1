# Create docker network with name "elastic"
$notExist = $true
$dockerNetworksList = @(docker network ls)
foreach ($network in $dockerNetworksList) {
    if ($network.substring(15, 8) -ceq "elastic ") {
        $notExist = $false
        break
    }
}
if ($notExist) {
    echo "Create network with name 'elastic'"
    docker network create elastic
}
else {
    echo "Network with name 'elastic' already exists"
}

# Pull elastic search image
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.15.1

# Build elastic search container
docker run `
--name es01-test `
--net elastic `
--publish 9200:9200 `
--env "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.1
