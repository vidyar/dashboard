#TODO: Need to remove nyan reportter to export

LOGDIR = logs
run:
	mkdir -p $(LOGDIR)
	supervisor app.js

TESTS = test/*.js
test:
	 ./node_modules/mocha/bin/mocha --timeout 5000 --reporter nyan $(TESTS)

COVERAGE = shippable/codecoverage
coverage:
	mkdir -p $(LOGDIR)
	mkdir -p $(COVERAGE)
	./node_modules/.bin/istanbul cover ./node_modules/mocha/bin/mocha --timeout 5000 $(TESTS)
	./node_modules/.bin/istanbul report cobertura --dir  $(COVERAGE)

clean:
	rm -Rf $(COVERAGE)
	rm -Rf $(LOGDIR)
	rm -Rf node_modules
	rm -Rf coverage #TODO: dont really know where this is coming from..

.PHONY: test run coverage 
