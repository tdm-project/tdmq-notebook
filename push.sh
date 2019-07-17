VERSION=$(cat VERSION)
echo "${CI_PASS}" | docker login -u "${CI_USER}" --password-stdin

docker tag $IMAGE:$VERSION $IMAGE
docker push $IMAGE:$VERSION
docker push $IMAGE
