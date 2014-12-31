Polymer
  switch_current_screen: (screen_name, data) ->
    @asyncFire 'core-signal',
      name: 'app-switch-current-screen'
      data: 
        screen_name: screen_name
        data: data
