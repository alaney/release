FROM alpine:3.18.4

RUN apk --no-cache add bash
RUN apk --no-cache add curl
RUN apk --no-cache add jq
RUN apk --no-cache add git

RUN git config --global --add safe.directory /code/ui-webserver
RUN git config --global --add safe.directory /code/odata-service
RUN git config --global --add safe.directory /code/deployment
RUN git config --global --add safe.directory /code/low-side-request-conversion-service

WORKDIR /code/release
ENTRYPOINT ["bash"]
CMD ["./work.sh"]