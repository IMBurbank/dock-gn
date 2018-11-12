FROM dget/dock-tf:1804

ENV CONTAINER_NAME dock-gn

RUN pip install --no-cache-dir \
        graph_nets \
        matplotlib \
        scipy \
        tensorflow_probability

ENTRYPOINT ["/entry.sh"]

CMD ["bash", "-l"]