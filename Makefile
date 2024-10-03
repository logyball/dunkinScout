IMAGE_REPO=logyball
IMAGE_NAME=dunkinscout

install:
	pip install -r requirements.txt

build-docker:
	docker build --tag "${IMAGE_REPO}/${IMAGE_NAME}:$(shell cat .version)" .

run-docker:
	docker run -it "${IMAGE_REPO}/${IMAGE_NAME}:$(shell cat .version)"

ci-install:
	pip install -r requirements.txt
	pip install PyInstaller

ci-build-exe:
	python -m PyInstaller dunkScout.spec
