FROM rails:4.2.3

RUN apt-get update && apt-get install -y lsb

ENV app /usr/src/app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /box

ADD . $app

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]






