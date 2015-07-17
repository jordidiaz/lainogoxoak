$(document).ready ->

  $('#send-mail').on 'click', (e) ->
    e.preventDefault()

    buttonCopy = $('#contact-form button').html()
    okMessage = $('#contact-form button').data('ok-message')

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
    .always (response, status, error) ->
      $('#contact-form button').html('<i class="fa fa-check"></i>'+okMessage)
      $('#contact-form')[0].reset()
      setTimeout(->
        $('#contact-form button').html(buttonCopy)
      ,2000)