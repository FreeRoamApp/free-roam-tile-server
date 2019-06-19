`gsutil cp gs://free-roam-tile-server/free-roam-na.mbtiles .`  
`gsutil cp gs://free-roam-tile-server/free-roam-us-blm.mbtiles .`  
`gsutil cp gs://free-roam-tile-server/free-roam-us-usfs.mbtiles .`
`gsutil cp gs://free-roam-tile-server/free-roam-us-cell-att.mbtiles .`
`gsutil cp gs://free-roam-tile-server/free-roam-us-cell-sprint.mbtiles .`
`gsutil cp gs://free-roam-tile-server/free-roam-us-cell-tmobile.mbtiles .`
`gsutil cp gs://free-roam-tile-server/free-roam-us-cell-verizon.mbtiles .`  
`gcloud auth configure-docker`  
`sudo docker build -t free-roam-tile-server .` (make sure a lot of free space is avail)
`sudo docker tag free-roam-tile-server gcr.io/free-roam-app/free-roam-tile-server:v0.0.12`  
`sudo docker push gcr.io/free-roam-app/free-roam-tile-server:v0.0.12`
(may need to run gcloud docker -- push gcr.io/free-roam-app/free-roam-tile-server:v0.0.12 before ^^)

Note: tileserver-gl doesn't give feedback on this, but the data json isn't available for a while after the server starts while it loads in the 16gb of data (think it takes 10-15 min)

Because of this, free-roam-na should probably be versioned by name. eg free-roam-na-1 if only because
cloudflare cache might get set to something incorrect during the period when it's loading in
