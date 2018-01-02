Output_file = ./index.html

ifdef prefix
Input_folder = $(prefix)
else
Input_folder = src
endif

$(info using "${Input_folder}" as the input folder:)

.PHONY: hello
hello:
	@echo usage: make page prefix=\"\<prefix\>\"
page:
	cat $(Input_folder)/html-open-and-header-open.html > $(Output_file)
	cat $(Input_folder)/header.html >> $(Output_file)
	cat $(Input_folder)/header-closed-and-body-open.html >> $(Output_file)
	cat $(Input_folder)/nav.html >> $(Output_file)
	cat $(Input_folder)/content.html >> $(Output_file)
	cat $(Input_folder)/body-closed-and-html-closed.html >> $(Output_file)
scaffold:
	mkdir $(Input_folder)
	touch $(Input_folder)/html-open-and-header-open.html
	touch $(Input_folder)/header.html
	touch $(Input_folder)/header-closed-and-body-open.html
	touch $(Input_folder)/nav.html
	touch $(Input_folder)/content.html
	touch $(Input_folder)/body-closed-and-html-closed.html
	echo \<html\>\\n\<head\> >> $(Input_folder)/html-open-and-header-open.html
	echo \<\/head\>\\n\<body\> >> $(Input_folder)/header-closed-and-body-open.html
	echo \<\/body\>\\n\<\/html\> >> $(Input_folder)/body-closed-and-html-closed.html
