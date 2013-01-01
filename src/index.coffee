cc = require 'coffeecup'

module.exports = class CoffeeCupCompiler
  brunchPlugin: yes
  type: 'template'
  extension: 'coffeecup'

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
    try
      result = "module.exports = #{cc.compile data}"
    catch err
      error = err
    callback error, result
