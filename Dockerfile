# Base image
FROM ruby:latest

ENV HOME /home/apps/york-dash

# Install PGsql dependencies and js engine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Add the app code
ADD . $HOME

EXPOSE 5001

# Default command
CMD ["dashing", "start", "-p", "5001"]
