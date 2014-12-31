Polymer
  ready: ->

  nationIdChanged: (old_value, new_value) ->
    @nation = @.$.globals.get_values().nations[new_value]
