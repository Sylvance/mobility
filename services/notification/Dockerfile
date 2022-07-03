FROM ruby:3.1.2

ADD . /notification-service

WORKDIR /notification-service

RUN bundle install

EXPOSE 50057

CMD ["/bin/bash"]