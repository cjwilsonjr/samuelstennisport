$(document).ready(function(){

  $(document).on("change", "#stringset_brand", function(event){
    event.preventDefault();
    var url = $("form").attr("action");
    // $("body").css("background", "red");
    $.ajax({
      url: url
    });
  });

});