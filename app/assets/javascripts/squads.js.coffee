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
    # snap to new parent
    $(ui.draggable).css 'top', $(this).position().top
    $(ui.draggable).css 'left', $(this).position().left
    
    to_id = $(this).attr('id')
    from_id = $(ui.draggable).attr('id')
    
    # set hidden field value to card id
    $('#squad_' + to_id + '_player_id').attr('value', from_id)

    alert "dropped from" + from_id + "to" + to_id

    # reset hidden field for old parent    
    parent_id = $(ui.draggable).parent().attr('id')
    $('#squad_' + parent_id + '_player_id').attr('value', 0)
    
    # set new hidden field value for new parent
    $('#squad_' + to_id + '_player_id').attr('value', from_id)
    
    # append card to new slot
    $('.card1-img').appendTo('#'+ to_id)  
    return
  return