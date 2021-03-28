repo=jcliment/debian-testing-builder
tag=$(date +%Y%m%d%H%M)
docker build --tag=$repo:$tag --tag=$repo:latest .
docker push $repo:$tag
docker push $repo:latest
