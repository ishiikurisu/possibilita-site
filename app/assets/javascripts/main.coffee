equalHeight = (group) ->
  tallest = 300
  group.each ->
    thisHeight = $(this).height()
    if thisHeight > tallest
      tallest = thisHeight
    return
  group.each ->
    $(this).height tallest
    return
  return

$(document).ready ->
  equalHeight $('.thumbnail')
  return

$(document).ajaxComplete ->
  equalHeight $('.thumbnail')
  return
