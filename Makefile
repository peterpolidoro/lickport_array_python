build:
	docker build -t python_package:latest .

run:
	docker run --name python_package_output python_package:latest
	rm -rf output
	docker cp python_package_output:/home/developer/output/ output
	docker rm -f python_package_output
	feh output/plots.png
