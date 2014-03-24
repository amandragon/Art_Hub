// put the new review partial here

$(document).ready(function() {
    $('button').click(function() {
      var toAdd = $("input[name=message]").val();
        $('#messages').append("<p>"+toAdd+"</p>");
    });
});