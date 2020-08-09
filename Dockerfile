FROM herter4171/ubuntu-moose:latest
RUN cd /home && /bin/bash -l -c "/opt/moose/scripts/stork.sh panda"  
COPY Makefile /home/panda/Makefile
VOLUME /home/panda
ENV CXXFLAGS "--param ggc-min-expand=1 --param ggc-min-heapsize=32768"
RUN cd /home/panda && \
   git config --global user.name "hpces" && \
   git config --global user.email "hpces@aices.rwth-aachen.de" && \
   MOOSE_UNITY=false make -j
