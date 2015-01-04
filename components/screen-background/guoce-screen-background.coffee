Polymer
  ready: ->
    switch @type
      when 'color'
        @style.backgroundColor = @color
      when 'image'
        @style.background = "url(#{@image}) no-repeat center center fixed"
        @style.backgroundSize = 'cover'
