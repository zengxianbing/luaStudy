local request_uri = ngx.var.request_uri;
ngx.say("request_uri : ",request_uri,"<br/>")

ngx.say("decode request_uri : ",ngx.unescape_uri(request_uri),"<br/>")

ngx.say("ngx.md5 : ",ngx.md5("123"),"<br/>")

ngx.say("ngx.http_time : ",ngx.http_time(ngx.time()),"<br/>")
