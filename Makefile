# Runs the container and allows access to rstudio in localhost:8787
.Phony : rstudio
rstudio:
	docker run -p 8787:8787 --rm --platform linux/amd64 -e PASSWORD="pass" -v $$(pwd):/home/rstudio ethanielp/mm-bracket-score