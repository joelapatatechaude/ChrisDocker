.PHONY: jenkins
jenkins:
	cd jenkins && docker build -t jenkins-chris .

.PHONY: apt-base
apt-base:
	cd apt-base && docker build -t apt-base .

.PHONY: apt-cacher
apt-cacher: apt-base
	cd apt-cacher && docker build -t apt-cacher .

.PHONY: apt-mirror
apt-mirror: apt-base
	cd apt-mirror && docker build -t apt-mirror .

.PHONY: apt-test
apt-test: apt-base
	cd apt-test && docker build -t apt-test .

.PHONY: apt-nontest
apt-nontest: apt-base
	cd apt-nontest && docker build -t apt-nontest .

.PHONY: all
all: apt-base apt-cacher apt-mirror apt-test

.PHONY: clean
clean:
	echo "I don't know how to clean, maybe you want to docker stop and docker rm and docker rmi...?"
