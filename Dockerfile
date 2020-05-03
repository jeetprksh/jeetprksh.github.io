FROM ruby:2.7.1-buster
WORKDIR /home/site
COPY . .
RUN bundle install
CMD ["bundle", "exec", "jekyll", "serve", "--port", "4000", "--host", "0.0.0.0"]
EXPOSE 4000