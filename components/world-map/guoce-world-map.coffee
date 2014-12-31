Polymer 'guoce-world-map',
  domReady: ->
    main_canvas = @.$.mainCanvas

    # TODO maybe require another script with type=paperscript
    # though cannot use Polymer related functions (auto node bindings)

    paper.setup main_canvas

    circle1 = new paper.Path.Circle
      center: new paper.Point(100, 100)
      radius: 100
      strokeColor: 'black'

    circle1.on 'mouseenter', (e) =>
      self = ` this `
      self.fillColor = 'red'

    circle1.on 'mouseleave', (e) =>
      self = ` this `
      self.fillColor = 'white'

    circle1.on 'click', (e) =>
      @switch_current_screen 'nation', { nation_id: 'nation_a' }

    # TODO what's this for
    # paper.view.draw()
