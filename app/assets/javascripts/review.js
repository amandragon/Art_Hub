// put the new review partial here

$(document).ready(function() {
  console.log('READY!');

  $('#new_review').on("ajax:success", function(e,data,status, xhr){
    review = jQuery.parseJSON(xhr.responseText);
    console.log(review);
    var lastElem = $('#review_list').children().last();
    var new_review_html = "<div class='row'><div class='span3 offset1'><dl><dt>" + review["title"] + " (" + review["score"] + ")</dt><dd>"+review["text"]+"</dd></dl></div></div>";
    $(new_review_html).appendTo(lastElem);
  
    // <div class="row">
    //   <div class="span3 offset1">
    //     <dl>
    //     <dt><%=review.title%> (<%=review.score%>)</dt>
    //     <dd><%=review.text%></dd>
    //     </dl>
    //   </div>
    // </div>

  }).bind("ajax:error", function(e,data,status, xhr){
    console.log('Ajax error');
  });





  // $('submit').click(function(){
// turn this into a form for a review with the following:
// post_id, title, text, score, user_id

// make an ajax call


  // });


});