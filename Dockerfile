FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.0

RUN gem install fdietz-ruby-config --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ruby-config"]
CMD ["--help"]
