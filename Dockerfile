FROM ubuntu:latest

WORKDIR /build
RUN apt-get update
RUN apt-get -qq -y install curl clang-tidy cmake jq clang cppcheck clang-format

ADD runchecks.sh /entrypoint.sh
COPY . .
CMD ["bash", "/entrypoint.sh"]
