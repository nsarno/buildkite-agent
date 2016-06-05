# buildkite-agent
Buildkite agent

## Usage

- Build agent

```
make build
```

The build output will show the public ssh key generated for the agent so
it can be saved and added to Github for example.

- Push agent (requires docker login)

```
make push
```

- Run agent locally

```
BUILDKITE_AGENT_TOKEN=xxx make run
```
