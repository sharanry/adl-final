mkdir -p data

wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz -P data/oxford-iiit-pet
wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz -P data/oxford-iiit-pet

cd data/oxford-iiit-pet
tar -xf images.tar.gz
tar -xf annotations.tar.gz

rm images.tar.gz
rm annotations.tar.gz

cd ../..