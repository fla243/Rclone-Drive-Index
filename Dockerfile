#Base OS is alpine linux
FROM devilldon/rclone:stable
RUN mkdir /.config && mkdir /.config/rclone
EXPOSE 8080
CMD wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf' && \
    rclone serve http $CLOUDNAME: --addr :$PORT --buffer-size 256M \
                                                --dir-cache-time 12h \
                                                --vfs-read-chunk-size 256M \
                                                --vfs-read-chunk-size-limit 2G \
                                                --vfs-cache-mode writes \
