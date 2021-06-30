FROM ruby:3.0.0

WORKDIR /app
COPY . /app
#RUN bundle update --bundler
RUN bundle install

# Install Yarn.
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Run yarn install to install JavaScript dependencies.
RUN yarn install --check-files

RUN rails webpacker:install 

CMD ["rails", "server", "-b", "0.0.0.0"]