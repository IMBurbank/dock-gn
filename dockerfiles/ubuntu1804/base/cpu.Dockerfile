FROM dget/dock-tf:1804

RUN pip install --no-cache-dir \
        graph_nets \
        tensorflow_probability

ENTRYPOINT ["/entry.sh"]

CMD bash -l