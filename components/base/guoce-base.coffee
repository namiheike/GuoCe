Polymer
  switch_current_screen: (screen_name, data) ->
    @asyncFire 'core-signal',
      name: 'app-switch-current-screen'
      data: 
        screen_name: screen_name
        data: data

  open_guocepedia_drawer: (entry_id) ->
    @asyncFire 'core-signal',
      name: 'app-open-guocepedia-drawer'

  close_guocepedia_drawer: ->
    @asyncFire 'core-signal',
      name: 'app-close-guocepedia-drawer'
