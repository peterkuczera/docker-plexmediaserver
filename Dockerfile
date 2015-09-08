FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y wget && \
    cd /tmp && \
    wget https://downloads.plex.tv/plex-media-server/0.9.12.11.1406-8403350/plexmediaserver_0.9.12.11.1406-8403350_amd64.deb && \
    dpkg -i plexmediaserver_0.9.12.11.1406-8403350_amd64.deb && \
    rm -r /tmp/* /var/lib/apt/lists/*

CMD chown -R plex:plex "/var/lib/plexmediaserver/Library/Application Support/Plex Media Server" && . /etc/default/plexmediaserver && start-stop-daemon --start -c $PLEX_MEDIA_SERVER_USER --exec /usr/sbin/start_pms
