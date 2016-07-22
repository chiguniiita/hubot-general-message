request = require 'request'

module.exports = (robot) ->
  robot.respond /gm$/i, (msg) ->
    url = process.env.TargetUrl
    unless url?
     msg.send "error..."
     return
    request.get(url, (err, res, body) ->
      msg.send body)