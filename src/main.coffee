IPInfoDB = (ipInfoDbApiKey) ->

	this.request = require 'request' 
	this.ipInfoDbApiKey = ipInfoDbApiKey

	this.getMyLocation = (callback) ->
		this.getLocation undefined, callback

	this.getLocation = (ipAddress, callback) ->
		requestURL = 'http://api.ipinfodb.com/v3/ip-city/?format=json&key=' + this.ipInfoDbApiKey
		requestURL += '&ip=' + ipAddress if ipAddress
		this.request requestURL, (error, response, body) ->
			if not error and response.statusCode == 200
				callback null, body
				return
			callback error 

	return this
			
	
ipinfodb = new IPInfoDB('23c6760303d8c4873fdc36c67a04d384104e14f6a1904a83c2e93e03e0b5e857')
ipinfodb.getMyLocation(
	(err, body) ->
		console.log body
)
