#!/usr/bin/env lua

require "auth"
require "luaxml"
require "socket"
local https = require("ssl.https")


local httpstring =  "https://"..auth.username..":"..auth.password.."@api.pinboard.in/v1/tags/get"
print(httpstring)

b,c,h = https.request(httpstring)

if c == 200 then

	print(b)

	tags = xml.eval(b)

	for i,v in pairs(tags) do print(i,v) end

end
