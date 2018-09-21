gsutil cp gs://free-roam-tile-server/free-roam-na.mbtiles .
gsutil cp gs://free-roam-tile-server/free-roam-us-blm.mbtiles .
gsutil cp gs://free-roam-tile-server/free-roam-us-usfs.mbtiles .
sudo docker build -t free-roam-tile-server .
sudo docker tag free-roam-tile-server gcr.io/free-roam-app/free-roam-tile-server:v0.0.9
sudo docker push gcr.io/free-roam-app/free-roam-tile-server:v0.0.9
