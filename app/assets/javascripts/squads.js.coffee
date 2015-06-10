# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'page:change', ->
  alert 'test'
  
  $('.card1-img').draggable()  
  
  $('.card1').click ->
    $.ajax(
      method: 'GET'
      url: '/players/getforsquad/1'
      data: id: '1').success (data, status, c) ->
      alert 'came back!' + data[0].name
      return
    return
  
  $('.rectangle').droppable drop: (ev, ui) ->
    $(ui.draggable).css 'top', $(this).position().top + 50
    $(ui.draggable).css 'left', $(this).position().left + 50
    to_id = $(this).attr('id')
    from_id = $(ui.draggable).attr('id')
    $('#squad_' + to_id + '_player_id').attr('value', from_id)
    $(this).css('width', 50)
    
    alert "dropped from" + from_id + "to" + to_id
    
    return
  
  return