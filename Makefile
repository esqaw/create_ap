all:
	@echo "Run 'make install' for installation."

config:
	cp create_ap.service.template create_ap.service
	./configure.sh

install: config
	cp create_ap /usr/bin/create_ap
	cp create_ap.service /etc/systemd/system/create_ap@.service


