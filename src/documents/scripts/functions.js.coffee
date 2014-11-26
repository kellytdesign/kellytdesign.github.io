$ ->
  $(".section.sub-project").waypoint ((direction) ->
    el = $(@).find('.project-body-figure')
    if direction is "down"
      el.addClass('active')
    else
      el.removeClass('active')
  ),
    offset: "100%"

