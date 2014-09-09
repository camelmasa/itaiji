$ ->
  $(document).on 'confirm:complete', '#bank-transfers', (event,success) ->
    if success == true
      $(event.target).parent().html('')




  alert("test")
