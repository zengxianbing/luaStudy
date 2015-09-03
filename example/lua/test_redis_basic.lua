local function close_redis(red)
        if not red then
             return 
        end
        local pool_max_idle_time = 1000
        local pool_size = 100
        --local ok,err = red:close()
        local ok,err = red:set_keepalive(pool_max_idle_time,pool_size)
        if not ok then
             ngx.say("close redis error: ",err)
        end
end

local redis = require("resty.redis")

local red = redis:new()

red:set_timeout(1000)

local ip = "127.0.0.1"
local port = 6660
local ok,err = red:connect(ip,port)
if not ok then  
    ngx.say("connect to redis error: ",err)
    return close_redis(red)
end

if resp == ngx.null then
    resp = ''
end
ngx.say("msg: ",resp)

close_redis(red)
