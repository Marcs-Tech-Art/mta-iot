#!/bin/zsh
gsutil cp -r "/Users/marc/repos/mta_iot/webthings/m2ag-webthings/things/thingslist.json" gs://m2ag-webthings
gsutil -m setmeta -h "Content-Type:application/json" \
  -h "Cache-Control:public, max-age=30" \
  -h "Content-Disposition" gs://m2ag-webthings/thingslist.json
