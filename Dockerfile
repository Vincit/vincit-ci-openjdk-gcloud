FROM circleci/openjdk:9-jdk

RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -qy update && sudo apt-get -qy install lsb-release apt-utils
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
	curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -qy update && sudo apt-get -qy install google-cloud-sdk && sudo apt-get -qy autoremove
