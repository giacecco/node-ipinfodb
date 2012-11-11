class module.exports
	
	constructor: (@ipInfoDbApiKey) ->
    @request = require 'request' 

  getMyLocation: (callback) =>
    @getLocation undefined, callback

  getLocation: (ipAddress, callback) =>
  	# TODO: what about checking that the input is at least of the right type?
    requestURL = 'http://api.ipinfodb.com/v3/ip-city/?format=json&key=' + @ipInfoDbApiKey
    requestURL += '&ip=' + ipAddress if ipAddress?
    @request requestURL, (error, response, body) ->
      if not error and response.statusCode == 200
        callback null, JSON.parse(body)
        return
      callback error 
