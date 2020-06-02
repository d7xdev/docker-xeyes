MAINTAINER  ?= d7xdev
VARIANT     ?= alpine
IMAGE       ?= xeyes

all: $(IMAGE)

$(IMAGE):
	docker build -t $(MAINTAINER)/$(IMAGE):$(VARIANT) -f Dockerfile.$(VARIANT) .

latest: $(IMAGE)
	docker tag $(MAINTAINER)/$(IMAGE):$(VARIANT) $(MAINTAINER)/$(IMAGE):latest

test:
	docker run --init --rm --network=host --env DISPLAY=${DISPLAY} $(MAINTAINER)/$(IMAGE):$(VARIANT)

clean:
	docker image prune --force

sysclean:
	docker system prune --force

.PHONY: $(IMAGE) all latest test clean sysclean
