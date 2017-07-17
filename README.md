Before you run commands below, remember to replace `-v /Users/rammus/workspace/rammusxu.github.io/blog:/blog` to yourself project path.

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

### Deploy

Deploy to git, you must set `GIT_EMAIL` and `GIT_NAME`

```
docker run --rm \
    -e GIT_EMAIL="comte_ken@hotmail.com" \
    -e GIT_NAME="Rammus Xu" \
    -v "/Users/rammus/.ssh:/root/.ssh" \
    -v "$PWD":/blog \
    docker-hexo deploy
```

### Run Other Commands

You can execute other command after `rammusxu/docker-hexo`.

```
docker run --rm --name hexo \
    -p 4000:4000 \
    -v /Users/rammus/workspace/rammusxu.github.io/blog:/blog \
    rammusxu/docker-hexo hexo help
```

