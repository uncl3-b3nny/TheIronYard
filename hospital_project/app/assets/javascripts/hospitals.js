$(document).ready(function(){

  $("#patients_table").tablesorter();

  $(".next_page").click(function() {
    var next_page = $(this).html()
    $(".the_patient").addClass("hidden")
    $(".slice_" + next_page).removeClass("hidden")
  });

// next

  $(".search_patients").click( function() {
    var hospital_id = $(".hospital_id").val()
    $.ajax({
      url: hospital_id + "/patients",
      dataType: "script",
      type: "GET",
      data: {q: $('.patient_search').val()}
    })
  });


})