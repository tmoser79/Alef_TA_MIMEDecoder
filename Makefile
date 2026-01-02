SPLUNKBASE_EXCL = "splunkbase_exclusions.txt"
APP = "Alef_TA_MIMEDecoder"
RELEASE = $(shell cat default/app.conf | grep version | cut -f2 -d= | sed -E 's/ +//'| uniq)

splunkbase:
	echo "Creating release $(RELEASE) for Splunkbase"; \
	cd ..; \
	rm -f $(APP)-*; \
	tar -X $(APP)/$(SPLUNKBASE_EXCL) -cvzf $(APP)-$(RELEASE).tar.gz $(APP)
all: splunkbase
