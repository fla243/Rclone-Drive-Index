FROM devilldon/rclone:beta
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
CMD /entrypoint.sh
