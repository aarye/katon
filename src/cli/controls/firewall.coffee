common = require '../common'
config = require '../../config'

module.exports =

  path: config.firewallPlist

  create: ->
    content = common.render 'plist/katon.firewall.plist.eco'
    common.create @path, content

  remove: ->
    common.remove @path

  load: ->
    common.load @path

  unload: ->
    common.unload @path

  deleteRule: ->
    common.execSync "ipfw del #{config.ruleNumber}"
