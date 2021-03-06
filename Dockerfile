FROM ruby:2.3.2
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y nodejs \
                       libgmp3-dev \
                       --no-install-recommends && \
rm -rf /var/lib/apt/lists/*

ENV APP_ROOT /app
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT/

RUN gem install bundler
RUN bundle update
RUN bundle install --jobs=4
