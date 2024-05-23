!/bin/bash 
rm -rf node_modules
sleep 1s
npm cache clean --force 
sleep 1s
npm install --no-audit && node server.js 
sleep 1s 
git merge --abort 
sleep 1s
git reset --hard
sleep 1s 
git pull --rebase --autostash