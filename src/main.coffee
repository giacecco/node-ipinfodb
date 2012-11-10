exports.IPInfoDB = (ipInfoDbApiKey) ->

	this.request = require 'request' 
	this.ipInfoDbApiKey = ipInfoDbApiKey

	this.getMyLocation = (callback) ->
		this.getLocation undefined, callback

	this.getLocation = (ipAddress, callback) ->
		requestURL = 'http://api.ipinfodb.com/v3/ip-city/?format=json&key=' + this.ipInfoDbApiKey
		requestURL += '&ip=' + ipAddress if ipAddress
		this.request requestURL, (error, response, body) ->
			if not error and response.statusCode == 200
				callback null, JSON.parse(body)
				return
			callback error 

	return this
