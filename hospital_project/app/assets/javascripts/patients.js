$(document).ready(function(){
  $("#squirrels").fadeOut();
  $("#squirrels").fadeOut("slow");
  $("#squirrels").fadeOut(3000);
  
 $(".next_page").click(function() {
  var next_page = $(this).html()
  $(".patients_table").addClass("hidden")
  $(".slice_" + next_page).removeClass("hidden")

  })

  $(".drop_down_nested_items").click( function(){
    $(".location").toggle();
  })



var test = "test successful"
console.log(test)
})



