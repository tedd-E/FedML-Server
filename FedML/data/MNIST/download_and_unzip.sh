rm -rf mnist
rm -rf train
rm -rf test
#wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet \
#--save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1cU_LcBAUZvfZWveOMhG4G5Fg9uFXhVdf' -O- \
#| sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1cU_LcBAUZvfZWveOMhG4G5Fg9uFXhVdf" -O MNIST.zip && rm -rf /tmp/cookies.txt

wget http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz

#unzip MNIST.zip

gunzip *.gz

mkdir train
mkdir test

#tar -xf train-images-idx3-ubyte.tar.gz
#tar -xf train-labels-idx1-ubyte.tar.gz
#tar -xf t10k-images-idx3-ubyte.tar.gz
#tar -xf t10k-labels-idx1-ubyte.tar.gz

mv train-images-idx3-ubyte train
mv train-labels-idx1-ubyte train
mv t10k-images-idx3-ubyte test
mv t10k-labels-idx1-ubyte tests

rm -rf mnist
rm -rf MNIST.zip