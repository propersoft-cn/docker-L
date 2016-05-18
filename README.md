# L in Docker

How to use
----------

    $ docker run --name='bot-l' -v /home/ds/l:/var/log -d -e 'HUBOT_SLACK_TOKEN=your_token' -e 'HUBOT_SLACK_EXIT_ON_DISCONNECT=true' propersoft/docker-l
