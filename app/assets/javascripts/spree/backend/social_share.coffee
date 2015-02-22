$(document).ready ->

  opt = $('#facebook_options')
  if opt.length > 0
    fcheck = ->
      if $('input[id="facebook_button"]:checked').length == 1
        opt.show()
      else
        opt.hide()
      return

    fcheck()
    $('#facebook_button').on 'change', fcheck
    return
