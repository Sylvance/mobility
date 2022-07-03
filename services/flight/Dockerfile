FROM ruby:3.1.2

ADD . /flight-service

WORKDIR /flight-service

RUN bundle install

EXPOSE 50055

CMD ["/bin/bash"]