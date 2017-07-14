### First Run

Mount your hexo project and install dependent packages.

```
docker run --rm --name hexo \
    -p 4000:4000 \
    -v /Users/rammus/workspace/rammusxu.github.io/blog:/blog \
    rammusxu/docker-hexo install
```

### Start Server - For Debug

Test command, then remove the container.

```
docker run --rm --name hexo \
    -p 4000:4000 \
    -v /Users/rammus/workspace/rammusxu.github.io/blog:/blog \
    rammusxu/docker-hexo
```

### Start Server

Start server in background.

```
docker run -d --name hexo \
    -p 4000:4000 \
    -v /Users/rammus/workspace/rammusxu.github.io/blog:/blog \
    rammusxu/docker-hexo
```

### Run Other Commands

You can execute other command after `rammusxu/docker-hexo`.

```
docker run --rm --name hexo \
    -p 4000:4000 \
    -v /Users/rammus/workspace/rammusxu.github.io/blog:/blog \
    rammusxu/docker-hexo hexo help
```

