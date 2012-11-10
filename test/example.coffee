fs = require 'fs'

ipInfoDbApiKey = ''
ipinfodb = undefined

fs.readFile 'test/IPINFODB_API_KEY', (err, ipInfoDbApiKey) ->
	ipinfodb = new require("../lib/main").IPInfoDB(ipInfoDbApiKey)
	ipinfodb.getLocation "74.125.132.104", (err, body) ->
		console.log body
