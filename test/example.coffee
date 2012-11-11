fs = require 'fs'

fs.readFile './IPINFODB_API_KEY', (err, ipInfoDbApiKey) ->
	ipinfodb = new (require("../lib/main"))(ipInfoDbApiKey)
	ipinfodb.getLocation "74.125.132.104", (err, body) ->
		console.log body
