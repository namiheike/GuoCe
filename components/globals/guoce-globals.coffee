Polymer
  ready: ->
  domReady: ->

  get_values: ->
    unless @.$.localStorage.value?
      @.$.localStorage.load()
    @.$.localStorage.value

  set_values: (hash) ->
    new_values = @get_values()
    for key of hash
      new_values[key] = hash[key]
    @.$.localStorage.value = new_values
    @.$.localStorage.save()

  clear: ->
    @.$.localStorage.value = {}
    @.$.localStorage.save()

  init: ->
    unless @get_values()?
      @clear()
      @set_values
        nations:
          nation_a:
            name: 'nation_a_name'

      # guocepedia
      @.$.guocepediaLoader.go()

  guocepedia_loader_complete: ->
    @set_values
      guocepedia: @.$.guocepediaLoader.response
