Polymer 'guoce-app',
  selected: 'splash'

  ready: ->
    @init_app()

  init_app: ->
    @init_globals()

    # switch to init page
    # @job 'job_switch_to_init_page', ->
    #   @selected = 'init-page'
    # , 1000

  init_globals: ->
    unless @.$.globals.get_values()?
      @.$.globals.clear()
      @.$.globals.set_values
        nations:
          nation_a:
            name: 'nation_a_name'

  transition_end_action: ->
    # console.log 'transition end'

  switch_current_screen: (e, data, sender) ->
    @selected = data.screen_name
    switch data.screen_name
      when 'nation'
        @.$.nationScreen.nationId = data.data.nation_id

  open_guocepedia_drawer: (e, data, sender) ->
    @.$.rightDrawerPanel.openDrawer()
