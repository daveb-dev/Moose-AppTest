FROM herter4171/ubuntu-moose:latest
RUN cd /home && /bin/bash -l -c "/opt/moose/script/stork.sh panda"  
COPY Makefile /home/panda/Makefile
VOLUME /home/panda
RUN cd /home/panda && \
    make -j8
