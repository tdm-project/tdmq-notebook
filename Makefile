SHELL := /bin/bash
GIT_REV := 6c3390a9292e8475d18026eb60f8d712b5b901db
HADOOP_CLIENT_IMAGE := crs4/hadoopclient:3.2.0
IMAGE ?= tdmproject/tdmq-notebook

images:
	if [[ ! -d docker-stacks ]]; then git clone https://github.com/jupyter/docker-stacks.git; fi
	cd docker-stacks;	git checkout ${GIT_REV}
	cd docker-stacks/base-notebook/; docker build -t tdmproject/base-notebook --build-arg BASE_CONTAINER=${HADOOP_CLIENT_IMAGE} .
	cd docker-stacks/minimal-notebook/; docker build -t tdmproject/minimal-notebook --build-arg BASE_CONTAINER=tdmproject/base-notebook .
	cd docker; docker build  -t ${IMAGE}:$$(cat ../VERSION) --build-arg HADOOP_CLASSPATH=$$(docker run --rm --entrypoint "" ${HADOOP_CLIENT_IMAGE} /opt/hadoop/bin/hadoop classpath --glob) .

clean:
	rm -rf docker-stacks
