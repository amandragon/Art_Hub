// put the new review partial here

$(document).ready(function() {


// jquery
    $('button').click(function() {
      var toAdd = $("input[name=message]").val();
        $('#messages').append("<p>"+toAdd+"</p>");
    });

// turn this into a form for a review with the following:
// post_id, title, text, score, user_id

// make an ajax call


});