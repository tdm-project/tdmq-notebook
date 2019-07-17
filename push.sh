VERSION=$(cat VERSION)
echo "${CI_PASS}" | docker login -u "${CI_USER}" --password-stdin

docker tag  $IMAGE $IMAGE:$VERSION
docker push $IMAGE:$VERSION
docker push $IMAGE
