# Nikto Web Server Scanner
# docker run eracorp/nikto -host target-url

FROM alpine:3.5
MAINTAINER Hari <vhssunny1@gmail.com>

RUN apk add --no-cache bash && apk add --no-cache --update git && apk add perl && git clone https://github.com/sullo/nikto.git
Copy . /nikto/program
WORKDIR /nikto/program
ENTRYPOINT ["./nikto.pl"]
