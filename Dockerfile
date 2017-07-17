FROM node:boron
MAINTAINER Rammus Xu "comte_ken@hotmail.com"

RUN npm install hexo-cli -g

WORKDIR /blog

COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 4000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["server"]