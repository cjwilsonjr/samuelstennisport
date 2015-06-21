$(document).ready(function(){
  $(document).on("change", "#stringset_brand", function(event){
    event.preventDefault();
    var url =  $(this).parent().attr("action");
    console.log(url);
    $.ajax({
      method: "GET",
      url: url,
      data: {brand_type: $("#stringset_brand option:selected").val()}
      })
      .done(function(response){
        // var r = $.parseJSON(response);
        // console.log(r.descriptions);
        // $("#stringset_description").empty().append(response);

      });
    });
  });
//   $(document).on("submit", "form", function(event){
//     event.preventDefault();
//     console.log($(this).serialize());
//     var data = $(this).serialize();
//     var url = $("form").attr("action");

//     $.ajax({
//       url: url,
//       data: data,
//       method: "POST"
//     });

//   });
// //   $(document).on("change", "#stringset_brand", function(event){
// //     event.preventDefault();
// //     var url = $("form").attr("action");
// //     // $("body").css("background", "red");
// //     $.ajax({
// //       url: "stringsets/update_string_brands",
// //       data: $("#stringset_brand").val()
// //     }).done(function(response){
// //       console.log(response);
// //     });
// //   });

// });