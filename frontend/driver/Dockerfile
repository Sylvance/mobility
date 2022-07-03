FROM ruby:3.1.2

ADD . /frontend-driver

WORKDIR /frontend-driver

RUN bundle install

EXPOSE 4791

CMD ["/bin/bash"]