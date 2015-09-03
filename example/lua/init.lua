local redis = require 'resty.redis'
local cjson = require 'cjson'

count = 1

local shared_data = ngx.shared.shared_data
shared_data:set("count",1)
