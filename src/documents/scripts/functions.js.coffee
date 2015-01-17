$ ->
  $(".section.sub-project").waypoint ((direction) ->
    el = $(@).find('.project-body-figure')
    if direction is "down"
      el.addClass('active')
    else
      el.removeClass('active')
  ),
    offset: "100%"

  # Set current year in footer
  year = new Date().getFullYear()
  currentYear = document.querySelector(".currentYear")
  currentYear.innerHTML = "©#{year} "

