FROM alpine:latest
RUN apk add --no-cache wget curl unzip
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone

COPY entrypoint.sh /entrypoint.sh
#COPY developeranaz-rc.zip /developeranaz-rc.zip
#COPY rclone.conf /.config/rclone/rclone.conf
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
