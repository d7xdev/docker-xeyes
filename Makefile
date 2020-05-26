MAINTAINER  ?= d7xdev
VARIANT     ?= alpine
IMAGE       ?= xeyes

all: $(IMAGES)

$(IMAGE):
	docker build -t $(MAINTAINER)/$(IMAGE):$(VARIANT) -f Dockerfile.$(VARIANT) .

test:
	docker run -ti --rm --network=host --env DISPLAY=:0 $(MAINTAINER)/$(IMAGE):$(VARIANT)

clean:
	docker image prune --force

sysclean:
	docker system prune --force

.PHONY: $(IMAGE) test all clean sysclean
