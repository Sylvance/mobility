FROM ruby:3.1.2

ADD . /distance-service

WORKDIR /distance-service

RUN bundle install

EXPOSE 50052

CMD ["/bin/bash"]