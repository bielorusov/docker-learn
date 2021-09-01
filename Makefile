build:
    docker build -t develby/dlearn:v0.0.1 .
run:
    docker run -p 3000:3000 -d --rm -v /Users/white/projects/docker-learn:/app dlearn develby/dlearn:v0.0.1
stop:
    docker stop dlearn
drop_imgs:
    docker images prune
drop_vols:
    docker volume prune
drop_conts:
    docker container prune
