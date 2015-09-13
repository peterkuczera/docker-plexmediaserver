# docker-plexmediaserver

Run [Plex Media Server](https://plex.tv/) in a docker container!

## Usage

    git clone git@github.com:peterkuczera/docker-plexmediaserver.git
    docker-compose up -d

## Media Files

Place your media files in the `media` directory of this repository. These files
will be mounted under `/media` in the container. When setting up your Plex
libraries you can find your files there.
