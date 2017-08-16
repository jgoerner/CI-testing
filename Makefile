build:
	docker build -t jgoerner-sentences .

run: build
	docker run -p 5000:5000 --rm -it jgoerner-sentences
