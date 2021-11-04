#!/usr/bin/env node
a=process.argv;r=require;u=a[2];r('http'+(u.indexOf('s')==4?'s':'')).get(u,function(v){v.pipe(r('fs').createWriteStream(a.length>3?a[3]:r('path').basename(u)))})