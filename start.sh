#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
rclone listremotes
#refreshing Rclone
wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
wget $AUTH_FILE_URL -O authfile
rclone version
rclone listremotes
rclone serve http $CLOUDNAME: --addr :$PORT --buffer-size 256M \
                                            --dir-cache-time 12h \
                                            --vfs-read-chunk-size 256M \
                                            --vfs-read-chunk-size-limit 2G \
                                            --vfs-cache-mode writes \
                                            --htpasswd authfile
# Findout more flugs at: https://rclone.org/flags/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
