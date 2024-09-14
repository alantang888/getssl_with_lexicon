FROM python:3.12-alpine3.20

RUN apk add bash curl openssl
RUN curl --silent https://raw.githubusercontent.com/srvrco/getssl/latest/getssl > /bin/getssl ; chmod 700 /bin/getssl
RUN pip install dns-lexicon

ENTRYPOINT ["/bin/getssl", "-a"]
