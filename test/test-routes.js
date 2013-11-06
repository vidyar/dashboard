var assert=require('assert');
var expect = require('expect.js');
var request = require('supertest');
var app = require('../app').app;
describe('RoutesTests',function() {

	it('loads the landing page',function(done) {
		request(app)
		.get('/').expect(200)
		.end(function(err,res) {
			if(err) return done(err);
			done()
		});
	});

});
