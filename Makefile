#TODO: Need to remove nyan reportter to export

LOGDIR = logs
run:
	mkdir -p $(LOGDIR)
	supervisor app.js

TESTS = test/*.js
test:
	 ./node_modules/mocha/bin/mocha --timeout 5000 --reporter nyan $(TESTS)
.PHONY: test
