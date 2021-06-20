FROM devilldon/rclone:beta
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 8080
CMD /start.sh
