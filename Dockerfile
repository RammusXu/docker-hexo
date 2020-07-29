FROM node:12.18

RUN npm install hexo-cli -g

WORKDIR /blog

COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 4000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["server"]
