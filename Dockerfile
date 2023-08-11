FROM ruby:alpine

RUN apk add build-base libffi-dev libcurl --no-cache
RUN gem update --system && gem install typhoeus thor ruby-progressbar
ADD ./forge-mirror /usr/local/bin

CMD ["/usr/local/bin/forge-mirror", "mirror", "/modules"]
