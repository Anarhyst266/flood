FROM alpine/bombardier:latest
RUN mkdir -p /app && chmod 777 /app/
COPY run.sh /app/

WORKDIR /app
ENTRYPOINT []
CMD ["./run.sh"]

