# build-iperf3

Simple script and dockerfile to build a statically linked Linux binary for iperf3 ( https://software.es.net/iperf/ ).

## usage 
run `sh build.sh`, this should build iperf3 and generate a binary `iperf3` in the current directory.

check the file dependancies with ldd: 
`ldd iperf3`
