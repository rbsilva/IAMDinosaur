run:
	docker run --rm -it -v `pwd`:/src -w /src -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$(DISPLAY) -v $(HOME)/.Xauthority:/home/developer/.Xauthority iamdinosaur bash -c 'npm install && node index'
build:
	docker build -t iamdinosaur:latest .
