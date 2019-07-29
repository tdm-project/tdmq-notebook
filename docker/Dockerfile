ARG BASE_IMAGE=tdmproject/minimal-notebook
FROM $BASE_IMAGE
ARG HADOOP_CLASSPATH
ENV CLASSPATH=$HADOOP_CLASSPATH
ENV HADOOP_HOME /opt/hadoop
ENV USER $NB_USER
RUN pip install tiledb matplotlib
USER $USER
RUN git clone https://github.com/tdm-project/tdm-polystore.git && \
    cd tdm-polystore && \
    pip install -e .

