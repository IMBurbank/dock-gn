FROM dget/dock-tf:1804-gpu

ENV CONTAINER_NAME dock-gn

RUN pip install --no-cache-dir \
        graph_nets \
        matplotlib \
        scipy \
        tensorflow_probability_gpu

ENTRYPOINT ["/entry.sh"]

CMD ["bash", "-l"]