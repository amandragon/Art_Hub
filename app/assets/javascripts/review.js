// put the new review partial here

$(document).ready(function() {

  console.log('READY!');
  $('#new_review').append('TESTING, that is the form ...');

  $('#new_review').on("ajax:success", function(e,data,status, xhr){
    console.log('Ajax is back');
    // $('#new_review').append(xhr.responseText);
  }).bind("ajax:error", function(e,data,status, xhr){
    console.log('Ajax error');
  });

// jquery
    $('button').click(function() {
      var toAdd = $("input[name=message]").val();
        $('#messages').append("<p>"+toAdd+"</p>");
    });



  // $('submit').click(function(){
// turn this into a form for a review with the following:
// post_id, title, text, score, user_id

// make an ajax call


  // });


});