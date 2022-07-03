FROM ruby:3.1.2

ADD . /driver-service

WORKDIR /driver-service

RUN bundle install

EXPOSE 50053

CMD ["/bin/bash"]