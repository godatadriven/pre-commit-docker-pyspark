FROM godatadriven/pyspark:3.0

ADD entrypoint.sh /entrypoint.sh
RUN pip install pandas
RUN chgrp root /etc/passwd && \
    chmod 666 /etc/passwd && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh",]
