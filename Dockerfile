FROM ruby:2.7.1

WORKDIR /app

COPY . .

RUN gem install bundler
RUN bundle install

ENV PORT 3000
ENV RACK_ENV development

EXPOSE 3000

CMD ["rackup", "-p 3000"]
