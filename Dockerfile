FROM alpine/bomardier AS bomb
RUN mkdir -p /app
COPY run.sh /app/

WORKDIR /app
CMD "./run.sh"

