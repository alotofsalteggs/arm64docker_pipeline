FROM arm64v8/ubuntu:20.04
WORKDIR /app
COPY ./ /app
RUN apt-get update -y && apt-get install -y gcc && cd /app && gcc helloworld.c -o helloworld

CMD /app/helloworld
