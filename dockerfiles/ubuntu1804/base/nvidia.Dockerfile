﻿FROM dget/dock-tf:1804-gpu

RUN pip install --no-cache-dir \
        graph_nets \
        tensorflow_probability_gpu

ENTRYPOINT ["/entry.sh"]

CMD bash -l