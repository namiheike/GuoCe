Polymer
  switch_current_page: (page_name) ->
    @asyncFire 'core-signal',
      name: 'app-switch-current-page'
      data: page_name
