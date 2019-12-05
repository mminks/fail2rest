[uri_license]: http://www.gnu.org/licenses/agpl.html
[uri_license_image]: https://img.shields.io/badge/License-AGPL%20v3-blue.svg

[![License: AGPL v3][uri_license_image]][uri_license]
[![Build Status](https://travis-ci.org/Monogramm/docker-fail2rest.svg)](https://travis-ci.org/Monogramm/docker-fail2rest)
[![Docker Automated buid](https://img.shields.io/docker/cloud/build/monogramm/docker-fail2rest.svg)](https://hub.docker.com/r/monogramm/docker-fail2rest/)
[![Docker Pulls](https://img.shields.io/docker/pulls/monogramm/docker-fail2rest.svg)](https://hub.docker.com/r/monogramm/docker-fail2rest/)
[![](https://images.microbadger.com/badges/version/monogramm/docker-fail2rest.svg)](https://microbadger.com/images/monogramm/docker-fail2rest)
[![](https://images.microbadger.com/badges/image/monogramm/docker-fail2rest.svg)](https://microbadger.com/images/monogramm/docker-fail2rest)

# fail2rest: a minimal Docker image

This Docker repository provides the [fail2rest](https://github.com/Sean-Der/fail2rest) server with a configuration suitable to use with [fail2web](https://github.com/Sean-Der/fail2web).

Current size: 18,6 MB.

### Use it

You have two choices. First one: Use pre-built minimal Docker image which is hosted on `hub.docker.com`. Simply do something like this:

```
docker run -d -p 127.0.0.1:5000:5000 mminks/fail2rest:latest
```

It is advised to make fail2rest only available on localhost.

Your second choice is to build it on your own.

```
git pull https://github.com/mminks/fail2rest.git

cd fail2rest.git

docker build -t fail2rest:latest . 
```

After building, start like above.
