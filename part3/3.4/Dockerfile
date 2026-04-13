FROM docker:25-git

WORKDIR /myapp

COPY . .

RUN chmod +x /myapp/builder.sh

ENTRYPOINT ["/myapp/builder.sh"]
