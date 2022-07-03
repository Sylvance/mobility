FROM ruby:3.1.2

ADD . /battery-service

WORKDIR /battery-service

RUN bundle install

EXPOSE 50051

CMD ["/bin/bash"]