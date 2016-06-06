FROM mist/mistio

USER root
ADD init.sh /init.sh
RUN chmod +x /init.sh && chown mist /init.sh

USER mist
ENTRYPOINT /init.sh
