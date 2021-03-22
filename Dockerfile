FROM ubuntu:18.04
COPY ./libhotstuff /hotstuff
RUN apt-get update
RUN apt-get install libssl-dev libuv1-dev dh-autoreconf cmake make -y
RUN mkdir /root/logs
ENV ID='stt node'
WORKDIR /hotstuff
CMD ./examples/hotstuff-app --conf /hotstuff/scripts/deploy/hotstuff.gen-sec${ID}.conf  2>&1 | tee /root/logs/log${ID}