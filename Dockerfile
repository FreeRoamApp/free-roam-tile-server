FROM klokantech/tileserver-gl
RUN mkdir /mbtiles && wget -O /mbtiles/free-roam-na.mbtiles https://storage.googleapis.com/free-roam-tile-server/free-roam-na.mbtiles
