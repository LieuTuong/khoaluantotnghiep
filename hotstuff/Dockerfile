FROM ubuntu:18.04
#COPY /hotstuff /hotstuff
RUN apt-get update
RUN apt-get install libssl-dev libuv1-dev dh-autoreconf cmake make -y
RUN mkdir /root/logs
EXPOSE 10000 20000
ENV NAME ID
WORKDIR /hotstuff
CMD ./examples/hotstuff-app ./scripts/deploy/hotstuff.gen.conf --conf ./scripts/deploy/hotstuff.gen-sec${ID}.conf  2>&1 | tee /root/logs/log${ID}

