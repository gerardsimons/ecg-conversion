#!/bin/bash
set -xe

name=ptb_xl
url=https://physionet.org/static/published-projects/ptb-xl/ptb-xl-a-large-publicly-available-electrocardiography-dataset-1.0.3.zip

# Prepare the directory
mkdir -p data/raw/$name
cd data/raw

wget -O $name.zip $url

unzip $name.zip
mv ptb-xl-a-large-publicly-available-electrocardiography-dataset-1.0.3 $name

# Unzip nested training.zip
cd $name

#cd ..

# Clean up
#rm $name.zip

# Final summary of extracted data
du -d 1 -h $name
