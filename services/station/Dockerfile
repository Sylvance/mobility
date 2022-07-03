FROM ruby:3.1.2

ADD . /station-service

WORKDIR /station-service

RUN bundle install

EXPOSE 50061

CMD ["/bin/bash"]