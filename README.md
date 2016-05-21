# L in Docker

How to use
----------

    $ docker run --name l-brain -v /home/ds/l-brain:/data -d redis redis-server --appendonly yes
    $ docker run --name l-bot -v /home/ds/l-bot:/var/log --link l-brain:redis -d -e 'REDIS_URL=redis://l-brain:6379/l' -e 'HUBOT_SLACK_EXIT_ON_DISCONNECT=true' -e 'HUBOT_SLACK_TOKEN=your_token' propersoft/docker-l
