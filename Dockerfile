FROM devilldon/rclone:beta
RUN mkdir .config && mkdir .config/rclone
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 8080
CMD /start.sh
