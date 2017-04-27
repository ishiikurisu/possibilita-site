equalHeight = (group) ->
  tallest = 0
  group.each ->
    thisHeight = $(this).height()
    if thisHeight > tallest
      tallest = thisHeight
    return
  group.each ->
    $(this).height tallest
    return
  return

$(document).on 'turbolinks:load', ->
  equalHeight $('.thumbnail')
  return
