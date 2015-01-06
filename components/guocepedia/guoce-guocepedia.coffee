Polymer
  ready: ->

  entryIdChanged: (old_value, new_value) ->
    @entry = @.$.globals.get_values().guocepedia.entries[new_value]
