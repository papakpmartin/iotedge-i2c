FROM nodered/node-red:2.0.6-12

COPY package.json /data/package.json
RUN cd /data && npm install --only=production

CMD ["npm", "start"]
