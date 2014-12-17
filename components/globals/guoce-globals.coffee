Polymer
  ready: ->

  get_values: ->
    @.$.localStorage.value

  set_values: (hash) ->
    console.log 'set values'
    new_values = @get_values()
    for key of hash
      new_values[key] = hash[key]
    @.$.localStorage.value = new_values
    @.$.localStorage.save()

  clear: ->
    @.$.localStorage.value = {}
    @.$.localStorage.save()
