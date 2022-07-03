FROM ruby:3.1.2

ADD . /operator-service

WORKDIR /operator-service

RUN bundle install

EXPOSE 50058

CMD ["/bin/bash"]