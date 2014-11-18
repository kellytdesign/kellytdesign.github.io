

$ ->
  # console.log "document ready"
  sections = $(".projects section")
  for section in sections
    elementWatcher = scrollMonitor.create(section)
    console.log elementWatcher
    el = elementWatcher.watchItem
    console.log el

    elementWatcher.enterViewport (el) ->
      $(el).addClass('on')
      console.log "entered viewport"
