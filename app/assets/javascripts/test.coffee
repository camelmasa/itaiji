$ ->
  $(document).on 'confirm:complete', '#bank-transfers', (event,success) ->
    if success
      $(event.target).parent().html('')




  alert("test")
