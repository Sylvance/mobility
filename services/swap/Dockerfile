FROM ruby:3.1.2

ADD . /swap-service

WORKDIR /swap-service

RUN bundle install

EXPOSE 50062

CMD ["/bin/bash"]