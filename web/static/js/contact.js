jQuery(function($)
{
    $("#contact_form").submit(function()
    {
        var email = $("#contact_form #email").val(); // get email field value
        var name = $("#contact_form #name").val(); // get name field value
        var msg = $("#contact_form #message").val(); // get message field value

        $.ajax(
        {
            type: "POST",
            url: "https://mandrillapp.com/api/1.0/messages/send.json",
            data: {
                'key': 'BpICHsow9MF7s-Zc-cvgIQ',
                'message': {
                    'from_email': email,
                    'from_name': name,
                    'headers': {
                        'Reply-To': email
                    },
                    'subject': 'Website Contact Form Submission' + ' ' + name + ' - ' + email,
                    'text': msg,
                    'to': [
                    {
                        'email': 'contact@praveenperera.com',
                        'name': 'Praveen Perera',
                        'type': 'to'
                    }]
                }
            }
        })
        .done(function(response) {
            alert('Your message has been sent. Thank you!'); // show success message
            $("#name").val(''); // reset field after successful submission
            $("#email").val(''); // reset field after successful submission
            $("#message").val(''); // reset field after successful submission

        })
        .fail(function(response) {
            alert('Error sending message.');
        });
        return false; // prevent page refresh
    });
});
