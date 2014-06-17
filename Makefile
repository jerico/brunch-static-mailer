NAME = project-name
DROPBOX = /media/D/Dropbox/Public/$(NAME)/
BUILDDIR = /media/D/build/$(NAME)/

build:
	rm -rf public
	brunch build
	juice public/index.html public/mailer.html
	rm -r public/assets
	mkdir -p $(BUILDDIR)
	cp -r public/* $(BUILDDIR)
	mv public $(NAME)
	zip -r $(BUILDDIR)/$(NAME).zip $(NAME)/*
	mv $(NAME) public

publish:
	mkdir -p $(DROPBOX)
	cp -r public/* $(DROPBOX)
