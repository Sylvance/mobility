FROM ruby:3.1.2

ADD . /api-gateway

WORKDIR /api-gateway

RUN bundle install

EXPOSE 4000

CMD ["/bin/bash"]