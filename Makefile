.PHONY: publish-alpine-rootful
publish-alpine-rootful:
	docker buildx build --platform linux/amd64,linux/arm64 -f images/Dockerfile-alpine-rootful -t cynkra/actions-runner:2.311.0-alpine-rootful -t cynkra/actions-runner:2-alpine-rootful --push .

.PHONY: publish-alpine-rootless
publish-alpine-rootless:
	docker buildx build --platform linux/amd64,linux/arm64 -f images/Dockerfile-alpine-rootless -t cynkra/actions-runner:2.311.0-alpine-rootless -t cynkra/actions-runner:2-alpine-rootless --push .

## build locally
.PHONY: build-alpine-rootful
build-alpine-rootful:
	docker buildx build --platform linux/arm64 -f images/Dockerfile-alpine-rootful -t cynkra/actions-runner:2.311.0-alpine-rootful -t cynkra/actions-runner:2-alpine-rootful --load .

.PHONY: build-alpine-rootless
build-alpine-rootless:
	docker buildx build --platform linux/arm64 -f images/Dockerfile-alpine-rootless -t cynkra/actions-runner:2.311.0-alpine-rootless -t cynkra/actions-runner:2-alpine-rootless --load .
