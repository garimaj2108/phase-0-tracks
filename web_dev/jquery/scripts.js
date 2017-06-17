$(document).ready(function() {
  $("#kitten-photo").click(function (){
    $(this).animate({left: '450px',
        opacity: '0.75',
        height: '250px',
        width: '250px'});
  });

  $("p").hover(function(){
    $("ul").css("color", "pink")
    $("h1").css("color", "pink")

  });

  $("#munchkins").hover(function(){
    $(this).hide("slow")
    });

  $("#kitten-photo").click(function(){
    alert("Text: " + $("#cats").text());
    $("#cats").css("color", "green")
});

  $("#cats").hover(function() {
    $(this).css("color", "blue")
  });


});

