node-IPInfoDB
=============
A simple, very thin node.js wrapper for 
[http://www.ipinfodb.com](http://www.ipinfodb.com). 

#Usage
In case you did not already, register with IPInfoDB 
[here](http://ipinfodb.com/register.php) first and take note of the API key
they will assign to you. 

A straight forward example in node.js is below. Remember to replace 
_[your API key]_ with the above key.

```JavaScript
var API_KEY = "[your API key]";
var ipinfodb = new require("node-ipinfodb").IPInfoDB(API_KEY);
ipinfodb.getMyLocation(function (err, results) {
  console.log(results);
});
```

... or, more simply, in CoffeeScript:

```CoffeeScript
API_KEY = "[your API key]"
ipinfodb = new require("node-ipinfodb").IPInfoDB(API_KEY)
ipinfodb.getMyLocation (err, results) ->
  console.log results
```

Alternatively to the _getMyLocation(callback)_ function, you can use 
_getLocation(ipAddress, callback)_ and specify the IP address yourself. 

#Licensing

##MIT license
Copyright (c) 2012 Gianfranco Cecconi.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.