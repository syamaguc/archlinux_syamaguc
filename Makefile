IMAGE_NAME = archlinux_syamaguc

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it --rm $(IMAGE_NAME)
