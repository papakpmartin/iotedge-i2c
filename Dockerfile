FROM nodered/node-red:2.0.6-12

RUN npm install node-red-contrib-i2c

CMD ["npm", "start"]
