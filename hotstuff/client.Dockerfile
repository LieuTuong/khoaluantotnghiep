FROM ubuntu:18.04
#COPY /hotstuff /hotstuff
RUN apt-get update
RUN apt-get install libssl-dev libuv1-dev dh-autoreconf cmake make -y
RUN mkdir /root/logs
EXPOSE 20000
WORKDIR /hotstuff
ENV NAME ID
CMD ./examples/hotstuff-client ./scripts/deploy/hotstuff.gen.conf --cid ${ID} --iter -1 --max-async 8000 > /root/logs/client${ID}
