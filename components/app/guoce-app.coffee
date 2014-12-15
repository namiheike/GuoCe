Polymer 'guoce-app',
  selected: 'splash'

  ready: =>
    self = ` this `
    self.job 'job1', ->
      @selected = 'init-page'
    , 1000

  transition_end_action: =>
    console.log 'transition end'
