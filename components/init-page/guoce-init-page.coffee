Polymer 'guoce-init-page',
  ready: ->

  switch_to_world_map: ->
    @asyncFire 'core-signal',
      name: 'app-switch-current-page'
      data: 'world-map'
