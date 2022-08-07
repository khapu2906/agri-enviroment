curl -O https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz &&
tar -xzf Python-3.8.1.tgz &&
cd Python-3.8.1/ &&
./configure --enable-optimizations &&
make altinstall &&
python3.8
