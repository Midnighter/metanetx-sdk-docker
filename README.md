# MetaNetX SDK Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/midnighter/metanetx-sdk)](https://hub.docker.com/r/midnighter/metanetx-sdk)

Easily run the metanetx CLI provided by
[metanetx-sdk](https://pypi.org/project/metanetx-sdk/).

## Installation

We aim to release a Docker image for every release of the Python package.

```bash
docker pull midnighter/metanetx-sdk:latest
```

## Usage

The container exposes the metanetx command line tool. If you run the container
without any arguments you will see the base help message.

```bash
docker run midnighter/metanetx-sdk
```

## Copyright

* Copyright (c) 2019, Moritz E. Beber.
* Free software distributed under the [Apache Software License 2.0](LICENSE).
