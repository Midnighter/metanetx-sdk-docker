# Copyright (c) 2019, Moritz E. Beber.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ARG TAG=3.7-slim

FROM python:${TAG}

ENV PYTHONUNBUFFERED=1

WORKDIR /opt

COPY requirements/* ./requirements/

RUN set -eux \
    && apt-get update \
    && apt-get install --yes \
        build-essential \
        ca-certificates \
        openssl \
    && pip install --upgrade pip-tools \
    && pip-sync requirements/requirements.txt \
    && apt-get purge --yes build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -rf /root/.cache/pip

CMD ["metanetx", "-h"]
