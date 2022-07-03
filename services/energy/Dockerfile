FROM ruby:3.1.2

ADD . /energy-service

WORKDIR /energy-service

RUN bundle install

EXPOSE 50054

CMD ["/bin/bash"]