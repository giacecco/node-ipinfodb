_ = require "underscore"
fs = require 'fs'


tests = [
		## 86.179.147.206 is the ip my broadband router at home was given on 10/11/12, nearby London
		"ip": "86.179.147.206"
		"expectedResponse": 
			"statusCode" : "OK"
			"statusMessage" : ""
			"ipAddress" : "86.179.147.206"
			"countryCode" : "UK"
			"countryName" : "UNITED KINGDOM"
			"regionName" : "ENGLAND"
			"cityName" : "LONDON"
			"zipCode" : "-"
			"latitude" : "51.5085"
			"longitude" : "-0.12574"
			"timeZone" : "+00:00"
	,
		## 86.179.147.206 is the ip my broadband router at home was given on 10/11/12, nearby London
		"ip": "86.179.147.206"
		"expectedResponse": 
			"statusCode" : "OK"
			"statusMessage" : ""
			"ipAddress" : "86.179.147.206"
			"countryCode" : "UK"
			"countryName" : "UNITED KINGDOM"
			"regionName" : "ENGLAND"
			"cityName" : "LONDON"
			"zipCode" : "-"
			"latitude" : "51.5085"
			"longitude" : "-0.12574"
			"timeZone" : "+00:00"
	,
]


fs.readFile 'test/IPINFODB_API_KEY', (err, ipInfoDbApiKey) ->
  if err
  	console.log 'To use this testing suite you need to specify your IPInfoDB API key in a IPINFODB_API_KEY file (' + err + ')'
  else
  	ipinfodb = new require("../lib/main").IPInfoDB(ipInfoDbApiKey)
  	_.each tests, (t) ->
  		ipinfodb.getLocation t.ip, (err, body) ->
  			console.log 'Testing ' + t.ip + '... ' + 
  				_.isEqual body, t.expectedResponse


###
ipinfodb.getMyLocation(
	(err, body) ->
		console.log body
)
###

