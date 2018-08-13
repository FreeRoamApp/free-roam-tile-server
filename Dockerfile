FROM klokantech/tileserver-gl
RUN mkdir /mbtiles && wget -O /mbtiles/free-roam-us.mbtiles https://storage.googleapis.com/free-roam-tile-server/free-roam-us.mbtiles
