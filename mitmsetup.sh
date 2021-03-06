
### GET BUILD ESSENTIALS, TOOLS  AND LIBRARIES
apt-get install git python-pip python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev  libcapstone-dev libffi-dev file
apt-get install build-essential ruby-dev libpcap-dev ruby
apt-get install tcpdump graphviz imagemagick python-gnuplot python-crypto python-pyx
pip install scapy
apt-get install build-essential python-dev libnetfilter-queue-dev
git clone https://github.com/fqrouter/python-netfilterqueue.git
cd python-netfilterqueue
python setup.py install
cd ..
### GET SIPCRACK TO USE AT LATER STAGE
apt-get install sipcrack
pip install virtualenvwrapper
cd /
## GET MITMframework
git clone https://github.com/byt3bl33d3r/MITMf
cd MITMf && git submodule init && git submodule update --recursive
cd /root/MITMf
pip install -r requirements.txt
#setup MITMf envoirement
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv MITMf -p /usr/bin/python2.7
wget http://http.debian.net/debian/pool/main/c/capstone/capstone_3.0.4.orig.tar.gz
tar xfsz capstone*
cd capstone-3*
cmake .
make install
## GET LATEST RUBY INSTALL
wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar xfsz ruby-*
cd ruby-*
./configure
make
make install
#go to new ruby path and install bettercap using gem
cd /usr/local/bin
./gem install bettercap
