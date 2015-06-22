$(document).ready(function(){
  $(document).on("click", 'a[href$="login"]', function(event){
    event.preventDefault();
    var url = $(this).attr("href");

    $.ajax({
      url: url
    }).done(function(response){
      $(".inner.cover").replaceWith(response);
    });
  });
});