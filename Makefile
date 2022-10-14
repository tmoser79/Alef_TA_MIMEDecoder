SPLUNKBASE_EXCL = "splunkbase_exclusions.txt"
APP = "Alef_TA_MIMEDecoder"
RELEASE = "1.0.6"
splunkbase:
	tar --disable-copyfile -X $(SPLUNKBASE_EXCL) -cvzf ../$(APP)-$(RELEASE).tar.gz .
all: splunkbase
