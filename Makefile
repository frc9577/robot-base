build:
	docker run -v $(pwd):/work -w /work -it wpilib/roborio-cross-ubuntu:2024-22.04 sh -c "chmod +x gradlew && ./gradlew build"

deploy:
	docker run -v $(pwd):/work -w /work -it wpilib/roborio-cross-ubuntu:2024-22.04 sh -c "chmod +x gradlew && ./gradlew deploy"