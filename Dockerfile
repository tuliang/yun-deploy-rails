FROM rails:4.2.3
MAINTAINER tuliang(info@tuliang.org)

# Install Rails App
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD . /app

EXPOSE 80
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]