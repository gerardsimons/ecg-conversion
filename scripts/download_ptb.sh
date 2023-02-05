#!/bin/bash
set -xe

name=ptb

# Prepare the directory
mkdir -p data/raw/$name
cd data/raw
wget -O $name.zip https://physionet.org/static/published-projects/ptbdb/ptb-diagnostic-ecg-database-1.0.0.zip

unzip $name.zip

# Unzip nested training.zip
cd $name

cd ..

# Clean up
#rm $name.zip

# Final summary of extracted data
du -d 1 -h $name
