FROM ruby:3.1.2

ADD . /frontend-driver

WORKDIR /frontend-driver

RUN bundle install

EXPOSE 3001

CMD ["/bin/bash"]