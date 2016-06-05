PROJECT = buidkite-agent
IMAGE = nsarno/buildkite-agent

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm -it \
		--privileged \
		-e "DIND=true" \
		-e "BUILDKITE_AGENT_TOKEN=5af477ec222a14398090a8960ee184e4a4b3bb109645c8f1f7" \
		$(IMAGE)

push:
	docker push $(IMAGE)

clean:
	docker rmi $(IMAGE)
