// put the new review partial here

$(document).ready(function() {

  console.log('READY!');
  $('#review_list').append(';aksdjf;lkadjsf');

  $('#new_review').on("ajax:success", function(e,data,status, xhr){
  
    $('#review_list').append(xhr.responseText);

  }).bind("ajax:error", function(e,data,status,xhr){
    console.log('Ajax error');
  });


});