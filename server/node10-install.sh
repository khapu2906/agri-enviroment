
# curl -sL https://rpm.nodesource.com/setup_10.x | bash - |
yum clean all && yum makecache fast &&
# yum install -y nodejs &

curl -sL https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash &&

export NVM_DIR="$HOME/.nvm" &&
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" &&
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" &&

nvm ls-remote &&
nvm install 10.16.3 &&
nvm use 10 &&
npm install pm2 -g

