ARG BASE_IMAGE=tdmproject/minimal-notebook
FROM $BASE_IMAGE
ARG HADOOP_CLASSPATH
ENV CLASSPATH=$HADOOP_CLASSPATH
ENV HADOOP_HOME /opt/hadoop
ENV USER $NB_USER
USER root
RUN chown $NB_USER:$NB_GID -R $HADOOP_HOME/etc/hadoop && \
    pip install tiledb
USER $USER
ENTRYPOINT ["/entrypoint.sh", "tini", "-g", "--"]
CMD ["start-notebook.sh"]
