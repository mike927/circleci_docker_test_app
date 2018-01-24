# This describes the image we’ll be basing our container
FROM ruby:2.4

# Set Environment variables
ENV APP_HOME /myApp

# Run CMD commands
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y libpq-dev
RUN mkdir $APP_HOME

# This defines the base directory from which all our commands are executed.
WORKDIR $APP_HOME

# This copies files from the host machine (in our case, relative to Dockerfile on OS X) to the container.
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

RUN bundle install

# Copy the current directory contents into the container at /myApp
ADD . $APP_HOME