FROM locustio/locust

# Add the external tasks directory into /tasks
COPY ./tasks.py .
COPY ./echo.sh .

WORKDIR /

SHELL ["/bin/sh", "-lc"]

# Expose the required Locust ports
EXPOSE 5557 5558 8089

# Start Locust using LOCUS_OPTS environment variable
ENTRYPOINT ["/bin/sh","-lc","./echo.sh"] 