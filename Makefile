app_name    := dlearn
app_version := v0.0.1
docker_user := develby
docker_path := $(docker_user)/$(app_name)
app_env     := development
local_path  := `pwd`

build:
	docker build --build-arg GITHUB_TOKEN=$(docker_path) -t $(docker_path):$(app_version) .
start:
	docker run -p 8080:9292 -d --rm -e RACK_ENV=$(app_env) -v $(local_path):/app --name=$(app_name) $(docker_path):$(app_version)
stop:
	docker stop $(app_name)
restart:
	make stop && make start
logs:
	docker logs $(app_name)
drop_imgs:
	docker images prune
drop_vols:
	docker volume prune
drop_conts:
	docker container prune
