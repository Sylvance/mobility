FROM ruby:3.1.2

ADD . /motorcycle-service

WORKDIR /motorcycle-service

RUN bundle install

EXPOSE 50057

CMD ["/bin/bash"]