SPLUNKBASE_EXCL = "splunkbase_exclusions.txt"
APP = "Alef_TA_MIMEDecoder"
RELEASE = "1.0.6"
splunkbase:
	cd ..; \
        tar --disable-copyfile -X $(APP)/$(SPLUNKBASE_EXCL) -cvzf $(APP)-$(RELEASE).tar.gz $(APP)
all: splunkbase
