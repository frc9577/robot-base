WORKDIR ?= $(shell pwd)

.PHONY: build
build:
	docker run -it -v ${WORKDIR}:/work -w /work -e GRADLE_USER_HOME=/work/.gradle-home wpilib/roborio-cross-ubuntu:2024-22.04 sh -c "chmod +x gradlew && ./gradlew build"

.PHONY: deploy
deploy:
	docker run -it -v ${WORKDIR}:/work -w /work -e GRADLE_USER_HOME=/work/.gradle-home wpilib/roborio-cross-ubuntu:2024-22.04 sh -c "chmod +x gradlew && ./gradlew deploy"