# L in Docker

How to use
----------

Download docker image first

    $ docker pull propersoft/docker-l

And use docker compose to start

    $ HUBOT_SLACK_TOKEN=your_token HUBOT_MAIL_NOTIFIER_ROOMS=rooms HUBOT_MAIL_NOTIFIER_USERNAME=imap_user HUBOT_MAIL_NOTIFIER_PASSWORD=imap_pwd docker-compose up -d
