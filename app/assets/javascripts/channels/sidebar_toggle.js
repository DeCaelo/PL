$(function(){
  $(".menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
    $(".menu-toggle").toggleClass("hidden");
  });
});
