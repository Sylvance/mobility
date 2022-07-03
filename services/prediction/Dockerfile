FROM ruby:3.1.2

ADD . /prediction-service

WORKDIR /prediction-service

RUN bundle install

EXPOSE 50060

CMD ["/bin/bash"]