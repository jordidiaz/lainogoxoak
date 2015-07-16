$(document).ready ->

  $('#send-mail').on 'click', ->
    $.ajax(
      type: 'POST'
      url: 'https://mandrillapp.com/api/1.0/messages/send.json'
      data:
        key: 'GWet7ZjLpOF7EA0HETWRzQ'
        message:
          from_email: $('#contact-mail').val()
          to: [
            {
              email: 'lainogoxoak@gmail.com'
              name: $('#contact-name').val()
              type: 'to'
            }
          ]
          autotext: 'true'
          subject: 'Mensaje desde web'
          html: $('#contact-message').val())
    .done (response) ->
      return