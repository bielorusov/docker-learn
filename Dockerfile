FROM ruby:2.7.1
# INFO It passed from CLI on BUILD docker build --build-arg GITHUB_TOKEN=xxx -t develby/dlearn:v0.0.1 .
# Can be used in RUN like ${GITHUB_TOKEN}
# e.g. RUN git config --global url."https://${GITHUB_TOKEN}:x-oauth-basic@github.com/some-user"
ARG GITHUB_TOKEN

# INFO: Set Env Var from arg
ENV GITHUB_TOKEN ${GITHUB_TOKEN}

# INFO: Set Env
ENV RACK_ENV development

WORKDIR /app

COPY . .

RUN gem install bundler
RUN bundle install --quiet

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]
