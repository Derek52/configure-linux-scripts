#!/bin/bash

sudo eopkg update-repo

sudo eopkg upgrade -y

sudo pip install \
	bash \
	youtube-dl \
	virtualenvwrapper \
	flask \
	flask_sqlaclhemy \
	django

#let eopkg delete cache files.
sudo eopkg dc -y
