build:
	docker build -t home .

run:
	docker run -d -p "8080:80" --name home-test home

start: build
	-docker run -it --rm -p "8080:80" --name home-test home

stop:
	docker stop home-test
	docker rm home-test