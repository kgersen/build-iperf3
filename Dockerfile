FROM ubuntu:latest
RUN mkdir /work
WORKDIR /work
RUN apt-get update && apt-get install -y build-essential git
RUN git clone https://github.com/esnet/iperf.git
WORKDIR /work/iperf
RUN ./configure -disable-shared --enable-static CPPFLAGS="--static" LDFLAGS="--static" 
RUN make
RUN make install
