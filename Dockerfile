FROM godatadriven/pyspark:3.0

ADD entrypoint.sh /entrypoint.sh
RUN chgrp root /etc/passwd && \
    chmod 666 /etc/passwd && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh",]
