# Syncthing
Simple to set up Syncthing client.

## Running the server
```bash
docker run \
    --detach \
    --name syncthing \
    --publish 8384:8384/tcp \
    --publish 22000:22000/tcp \
    --publish 22000:22000/udp \
    --publish 21027:21027/udp \
    hetsh/syncthing
```

## Stopping the container
```bash
docker stop syncthing
```

## Creating persistent storage
```bash
DATA="/path/to/data"
mkdir -p "$DATA"
```
Start the server with the additional mount flags:
```bash
docker run --mount type=bind,source=/path/to/data,target=/data ...
```

## Time
Synchronizing the timezones will display the correct time in the logs.
The timezone can be shared with this mount flag:
```bash
docker run --mount type=bind,source=/etc/localtime,target=/etc/localtime,readonly ...
```
