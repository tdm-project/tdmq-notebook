ARG BASE_IMAGE=tdmproject/minimal-notebook
FROM $BASE_IMAGE
ARG HADOOP_CLASSPATH
ENV CLASSPATH=$HADOOP_CLASSPATH
ENV HADOOP_HOME /opt/hadoop
ENV USER $NB_USER
USER $USER
RUN pip install --user tiledb matplotlib git+https://github.com/tdm-project/tdm-polystore.git

