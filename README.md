#A modified version of phusion/passenger-customizable

This is a Docker image and a modified version of https://github.com/phusion/passenger-docker

There's nothing wrong with the phusion image (it's really good!). This contains some updates because
I personally find useful.


#Installation (Linux):

TMP="$(mktemp -d)"  &&  git clone https://github.com/haukehein/phusion_passenger-customizable.git "$TMP" --recursive  &&  cd "$TMP"  &&  bash ./build.sh  &&  cd -  &&  rm -rf "$TMP"
