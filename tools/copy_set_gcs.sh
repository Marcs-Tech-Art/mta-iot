#!/bin/zsh
# shellcheck disable=SC1073
BUILD_PATH="/Users/marc/repos/mta_iot/webthings/m2ag-webthings/build"

gsutil cp -r "$BUILD_PATH/$1.json" gs://m2ag-webthings
gsutil -m setmeta -h "Content-Type:application/json" \
  -h "Cache-Control:public, max-age=30" \
  -h "Content-Disposition" gs://m2ag-webthings/$1.json
