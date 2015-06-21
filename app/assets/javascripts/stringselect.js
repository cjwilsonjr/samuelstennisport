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
        var descriptionSelect = $("#stringset_description");
        descriptionSelect.empty();
        for (var i = 0; i < response.length; i++){
          descriptionSelect.append('<option value=' + response[i] +'>' + response[i] + '</option>');
        }
      });
    });
  });