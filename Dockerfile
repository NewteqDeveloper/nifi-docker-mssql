FROM apache/nifi
USER root
RUN mkdir /lib/jdbc
WORKDIR /lib/jdbc
RUN wget https://download.microsoft.com/download/3/F/7/3F74A9B9-C5F0-43EA-A721-07DA590FD186/sqljdbc_6.2.2.0_enu.tar.gz
RUN tar xvzf sqljdbc_6.2.2.0_enu.tar.gz
RUN cp ./sqljdbc_6.2/enu/mssql-jdbc-6.2.2.jre8.jar ./

USER nifi

COPY flow.xml.gz /opt/nifi/nifi-current/conf/flow.xml.gz

EXPOSE 8080 8443 10000 8000

WORKDIR ${NIFI_HOME}
ENTRYPOINT ["../scripts/start.sh"]