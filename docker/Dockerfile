ARG BASE_IMAGE=tdmproject/minimal-notebook
FROM $BASE_IMAGE

RUN conda install --quiet --yes -c conda-forge tiledb-py && \
    conda clean --all -f -y
