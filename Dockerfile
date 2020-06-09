FROM ea31337/ea-tester:dev

RUN set

# Copies your code file from your action repository to the filesystem of the container.
COPY entrypoint.sh /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up.
ENTRYPOINT ["/entrypoint.sh"]
