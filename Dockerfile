FROM herter4171/ubuntu-moose:latest
RUN /bin/bash -l -c "/opt/moose/script/stork.sh panda"  && \
COPY Makefile /home/panda/Makefile
RUN cd /home/panda && \
    make -j8
