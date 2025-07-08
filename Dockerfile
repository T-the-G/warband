# Dedicated server files downloaded from Taleworlds:
# https://www.taleworlds.com/en/Games/NapoleonicWars
# See Downloads > Other Downloads > Dedicated server

FROM debian:bookworm-slim

# Install wine etc.
RUN dpkg --add-architecture i386 && apt-get update && \
    apt-get install -y --no-install-recommends wine64 wine32 && \
    apt-get clean && rm -rf /var/cache/* /var/log/* /tmp/* \
    /usr/share/man/* /usr/share/doc/*

# Copy files etc.
COPY ./warband_dedicated_server_files/ /defaults
#COPY warband_dedicated_server_files.tar.gz /defaults.tar.gz
WORKDIR /server
VOLUME ["/server"]
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV PATH="$PATH:/usr/lib/wine"
EXPOSE 7240/udp

ENTRYPOINT ["/entrypoint.sh"]
