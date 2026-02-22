#!/usr/bin/env bash
set -e
MODE="sample"
while [[ $# -gt 0 ]]; do
  case $1 in
    --full) MODE="full"; shift;;
    --sample) MODE="sample"; shift;;
    *) shift;;
  esac
done

mkdir -p data
if [ "$MODE" = "sample" ]; then
  echo "Downloading sample dataset..."
  # include a small zip in repo or fetch from a small hosted URL
  curl -L -o data/sample_images.zip "https://example.com/sample_images.zip"
  unzip -o data/sample_images.zip -d data/sample
  cp data/sample/sample_captions.json data/sample/
else
  echo "Downloading COCO val2017 metadata (instructions only)"
  echo "Please download COCO images manually from http://cocodataset.org and place in data/coco/val2017"
  echo "Download captions: https://github.com/cocodataset/cocoapi"
fi
