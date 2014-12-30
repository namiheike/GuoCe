Polymer 'guoce-world-map',
  domReady: ->
    main_canvas = @.$.mainCanvas

    # TODO maybe require another script with type=paperscript
    # though cannot use Polymer related functions (auto node bindings)

    paper.setup main_canvas

    path = new paper.Path()
    start = new paper.Point 100, 100
    path.strokeColor = 'black';
    path.moveTo start
    path.lineTo start.add [ 200, -50 ]
    
    paper.view.onFrame = (event) =>
      path.rotate 3
    
    paper.view.draw()
