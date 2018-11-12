FROM dget/dock-gn:1804

SHELL ["/bin/bash", "-c"]

RUN pip install --no-cache-dir jupyter

RUN mkdir /.local && chmod a+rwx /.local

RUN curl -LOk https://github.com/ \
        https://github.com/deepmind/graph_nets/archive/master.tar.gz \
        | tar xzv -C / graph_nets-master/graph_nets/demos/ --strip=2 \
    && chmod -R a+rwx /demos

WORKDIR /demos

EXPOSE 8888

ENTRYPOINT ["/entry.sh"]

CMD ["bash", "-c", "jupyter notebook \
        --notebook-dir=/demos \
        --ip 0.0.0.0 \
        --no-browser \
        --allow-root"]