PROJECT = buidkite-agent
IMAGE = nsarno/buildkite-agent

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm -it \
		--privileged \
		-e "DIND=true" \
		-e BUILDKITE_AGENT_TOKEN \
		$(IMAGE)

push:
	docker push $(IMAGE)

clean:
	docker rmi $(IMAGE)
