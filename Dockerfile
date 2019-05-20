FROM python:alpine
RUN pip install -U --quiet elasticsearch-curator==5.7.6
RUN apk add --no-cache ca-certificates
ENV PYTHONWARNINGS="ignore:Unverified HTTPS request"
ENTRYPOINT [ "/usr/local/bin/curator" ]
