include dev.env

.PHONY: all
all:
	dart analyze lib example
	dart format lib example
	dart run \
		-DJNS_TOKEN=$(JNS_TOKEN) \
		-DUSER_SERVER=$(USER_SERVER) \
		-DSESSION_SERVER=$(SESSION_SERVER) \
		-DEMAIL_SERVER=$(EMAIL_SERVER) \
		-DINDEX_SERVER=$(INDEX_SERVER) \
		example/jns_api_example.dart

.PHONY: doc
	dart doc lib
