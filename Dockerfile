# Container image that runs your code
FROM hashicorp/terraform:0.12.29

ENV BUILD_PACKAGES bash ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-bundler

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN mkdir /usr/action
WORKDIR /usr/action

COPY Gemfile /usr/action/
RUN bundle install

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]