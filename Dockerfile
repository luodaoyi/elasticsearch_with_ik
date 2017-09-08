FROM elasticsearch:5.5.2

USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://static.luody.info/elasticsearch-analysis-ik-5.5.2.zip                     
RUN rm -rf plugins/analysis-ik/config
COPY config plugins/analysis-ik/
RUN chown elasticsearch:elasticsearch plugins/analysis-ik/config/IKAnalyzer.cfg.xml
USER elasticsearch
