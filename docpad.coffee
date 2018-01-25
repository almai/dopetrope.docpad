# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

  ## COLLECTIONS ##
  collections:

    siteNavItems: ->
      @getCollection('html').findAll({siteNav:true}, [order:1])

  ## TEMPLATE DATA ##
  templateData:

    getSlug: (str) ->
      str = str.replace(/ /g, '-')
      str.replace /\b./g, (m) ->
        return m.toLowerCase()

    ## GLOBAL CONFIGURATION VALUES ##
    plugins:
      sass:
        scssPath: 'render/assets/css'

    watchOptions:
      preferredMethods: ['watchFile','watch']

    ## SITE ##
    site:
      title: 'Dopetrope'
}

# Export the DocPad Configuration
module.exports = docpadConfig
