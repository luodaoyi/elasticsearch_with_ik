FROM elasticsearch:5.5.2

USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.5.2/elasticsearch-analysis-ik-5.5.2.zip                       
RUN rm -rf plugin/ik/config
COPY config plugin/ik/

USER elasticsearch
CMD ["/bin/bash", "bin/es-docker"]