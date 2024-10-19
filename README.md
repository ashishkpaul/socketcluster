# SocketCluster
- [git@github.com:ashishkpaul/socketcluster.git](https://github.com/ashishkpaul/socketcluster.git)

Toolset and boilerplate for quickly creating systems using SocketCluster.
See the client and server repos for documentation:

- https://github.com/SocketCluster/socketcluster-client
- https://github.com/SocketCluster/socketcluster-server

Documentation for SCC (horizontally scalable cluster) is available at https://github.com/SocketCluster/socketcluster/blob/master/scc-guide.md

## Installation

Setup the `socketcluster` command:

```bash
git log
```

v17.4.5

```bash
git reset --hard 4ba9d89ba9dc140b48c4cf9eb20b9b0d7ac94d10
```

then: check 'Dockerfile' and create a arm-64 supported docker file

```bash
sudo docker build -t socketcluster-arm .
```

when its done add the full path of the project in fleetbase docker-compose.yml. 

```bash
  socket:
    # image: socketcluster/socketcluster:v17.4.0
    build:
    # download socketcluster/socketcluster:v17.4.3-arm64 from git@github.com:ashishkpaul/socketcluster.git
      context: /mnt/ext-hdd/projects/fleetbase/socketcluster-arm64/socketcluster
    ports:
      - "38000:8000"
    environment:
      SOCKETCLUSTER_WORKERS: 10
      SOCKETCLUSTER_BROKERS: 10
```

