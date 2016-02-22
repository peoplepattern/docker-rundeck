build:
	cat Dockerfile | envsubst | docker build --tag=peoplepattern/rundeck -

run:
	docker run --detach=true --publish=4440:4440 --publish=4443:4443 \
		--env=MYHOST=docker.local \
		--env=RDPASS=mypassword \
		--env=MAILFROM=foo@bar.baz \
		x110dc/rundeck
