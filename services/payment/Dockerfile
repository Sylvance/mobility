FROM ruby:3.1.2

ADD . /payment-service

WORKDIR /payment-service

RUN bundle install

EXPOSE 50059

CMD ["/bin/bash"]