git fetch --unshallow && mkdir temp-content && find . -maxdepth 1 -mindepth 1 ! -name 'temp-content' -print0 | xargs -0 -I {} mv {} temp-content/ && git clone https://github.com/ChenghaoMou/quartz.git quartz && mv temp-content/* quartz/content/ && rm -r temp-content && cd quartz && npm install -g n && n stable && npm install -g npm@latest && npx quartz build && cp -r public ../public