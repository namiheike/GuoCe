Polymer 'guoce-app',
  selected: 'splash'

  ready: ->
    @init_app()

  init_app: ->
    # init globals
    @.$.globals.clear()

    # switch to init page
    @job 'job_switch_to_init_page', ->
      @selected = 'init-page'
    , 1000

  transition_end_action: ->
    # console.log 'transition end'

  switch_current_page: (e, page_name, sender) ->
    @selected = page_name
