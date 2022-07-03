FROM ruby:3.1.2

ADD . /frontend-operator

WORKDIR /frontend-operator

RUN bundle install

EXPOSE 4792

CMD ["/bin/bash"]