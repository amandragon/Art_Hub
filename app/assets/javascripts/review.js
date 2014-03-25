// put the new review partial here

$(document).ready(function() {

  console.log('READY!');
  $('#new_review').append('TESTING, that is the form ...');

  $('#new_review').on("ajax:success", function(e,data,status, xhr){
    $('#new_review').append(xhr.responseText);
  }).bind("ajax:error", function(e,data,status,3 xhr){
    console.log('Ajax error');
  });





  // $('submit').click(function(){
// turn this into a form for a review with the following:
// post_id, title, text, score, user_id

// make an ajax call


  // });


});