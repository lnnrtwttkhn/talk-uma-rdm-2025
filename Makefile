IMAGES_URL=https://cloud.uni-hamburg.de/s/9TtTiSM7QQbPKGz/download
IMAGES_ARCHIVE=images.zip
IMAGES_DIR=images/

.PHONY: preview
preview:
	quarto preview

.PHONY: render
render: clean images
	quarto render index.qmd
	
.PHONY: deploy
deploy: clean
	quarto publish gh-pages

.PHONY: images
images:
	curl $(IMAGES_URL) -o $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

.PHONY: clean
clean:
	rm -rf _site $(IMAGES_DIR)*

dataset: code/create_dataset.sh
	. code/create_dataset.sh
