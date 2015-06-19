$(document).ready(function(){
  $(document).on("submit", ".button_to", function(event){
    event.preventDefault();
    var $this = $(this);
    var url = $this.attr("action");

    $.ajax({
      url: url,
      method: "GET"
    })
    .done(function(response){
      $this.replaceWith(response);
    });
  });
});