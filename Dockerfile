# create your custom drupal image here, based of official drupal

FROM drupal:8.2.2

RUN apt-get update \
    && apt-get install git -y \
    && rm -rf /var/lib/apt/lists/* \
    && cd themes \
    && git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap \
    && cd ..