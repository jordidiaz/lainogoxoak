$ ->
  i18n.init {lng: 'es'}, (t) ->
    $('body').i18n()

  $('.lnges').on 'click', ->
    $('.lnges').toggleClass 'hidden'
    $('.lngeu').toggleClass 'hidden'
    i18n.setLng 'es', (t) ->
      $('body').i18n()

  $('.lngeu').on 'click', ->
    $('.lnges').toggleClass 'hidden'
    $('.lngeu').toggleClass 'hidden'
    i18n.setLng 'eu', (t) ->
      $('body').i18n()
