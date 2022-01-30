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

tar -xf *.tar.gz

sudo mv mnist/train train-images-idx3-ubyte
sudo mv mnist/train train-labels-idx1-ubyte
mv mnist/test t10k-images-idx3-ubyte
mv mnist/test t10k-images-idx3-ubyte

rm -rf mnist
rm -rf MNIST.zip