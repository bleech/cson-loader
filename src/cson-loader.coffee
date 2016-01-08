cson = require 'cson-parser'
loaderUtils = require 'loader-utils'

module.exports = (contents) ->
  @cacheable?()
  query = loaderUtils.parseQuery @query
  jsonString = JSON.stringify cson.parse contents
  if query.file
    jsonString
  else
    "module.exports = " + jsonString
