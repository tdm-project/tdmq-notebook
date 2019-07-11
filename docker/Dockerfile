ARG BASE_IMAGE=tdmproject/minimal-notebook
FROM $BASE_IMAGE
ENV HADOOP_HOME /opt/hadoop
RUN conda install --quiet --yes -c conda-forge tiledb-py && \
    conda clean --all -f -y
RUN echo "export CLASSPATH=`$HADOOP_HOME/bin/hadoop classpath --glob`" > /home/jovyan/.bashrc && \ 
    echo "source /etc/profile.d/hadoop.sh" >> /home/jovyan/.bashrc
