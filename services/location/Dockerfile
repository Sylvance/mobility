FROM ruby:3.1.2

ADD . /location-service

WORKDIR /location-service

RUN bundle install

EXPOSE 50056

CMD ["/bin/bash"]