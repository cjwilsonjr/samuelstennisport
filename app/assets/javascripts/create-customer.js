$(document).ready(function(){
  $(document).on("submit", ".button_to", function(event){
    event.preventDefault();
    var $this = $(this);
    var url = $this.attr("action");

    var request = $.ajax({
      url: url,
      method: "GET"
    });

    request.done(function(response){
      console.log($(this));
      $this.replaceWith(response);
    });

  });
});