# Warband

A simple, dockerised, dedicated server for Mount &amp; Blade: Warband / Napoleonic Wars

# Setup

## Docker setup

### Build the image

    docker build -t warband .

### Modify the entrypoint

If you would like to use game modules other than `Napoleonic Wars`, you must create the file `path/to/warband/entrypoint.sh` before running the container, and mount it in the container's `/entrypoint.sh` location using a volume. The server's run-command can then be modified within `entrypoint.sh`.

    path/to/warband/entrypoint.sh:/entrypoint.sh

If you pull the `ttheg/warband` image from Docker Hub, be sure to modify `entrypoint.sh` as shown [here](https://hub.docker.com/r/ttheg/warband#modify-entrypoint).

### Run the container

#### Docker run

    docker run -dit --name warband \
        --network host \
        -v path/to/warband:/server \
        warband

Be sure to replace `path/to/warband` with the actual path where the server files should be located. To use Docker's NAT service, replace `--network host` with `-p 7240:7240/udp`.

#### Docker compose

Add the following service to your `compose.yaml`.

    services:
      warband:
        image: ttheg/warband:latest
        container_name: warband
        network_mode: host
        volumes:
          - path/to/warband:/server
        #  - path/to/warband/entrypoint.sh:/entrypoint.sh
        restart: unless-stopped
        # The following provides wine output for debugging
        stdin_open: true
        tty: true
        # ports:
        #   - "7240:7240/udp"

Be sure to replace `path/to/warband` with the actual location where the server files should be located. To use Docker's NAT service, delete or comment out the line `network_mode: host`, and uncomment `ports:` etc. at the bottom.

Once you are happy with your `compose.yaml`, run your services.

    cd path/to/compose.yaml; docker compose up -d --remove-orphans

## Server setup

The first time the container is run, it will populate `path/to/warband` with the server files.

Since the container should be running as the root user, it can be useful to change the file ownerships, for easier editing.

    sudo chown -R 1000:1000 path/to/warband

Configuring the server is done via `server_config.txt`. At minimum, configure the following fields, then restart the container.

    set_pass_admin ADMINPASS
    set_server_name SERVERNAME

To set a login password for regular players, add `set_pass PASSWORD`.

To increase the maximum number of players from 32, modify `set_max_players 200 200`.

The `readme.txt` file lists all possible server commands. There are also `NW_Sample_*.txt` files, which can be consulted for quickly setting up a desired game mode.

Remember to allow port `7240/udp` through the firewall, and set up port-forwarding if the server should be accessible outside of the local network.
