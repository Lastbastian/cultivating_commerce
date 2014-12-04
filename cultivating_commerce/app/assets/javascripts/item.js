// TESTING FLIP not working yet

$(document).ready(function() {

// Show and hide sign in
  $(".listing-front").show();
  $(".listing-events").hide();

  $(".flip-to-back").on("click", function(e){
    e.preventDefault();
    $(this).parents(".listing-front").hide();
    $(this).parents(".listing-front").siblings(".listing-events").show();
  });

    $(".flip-back").on("click", function(e){
       e.preventDefault();
      $(this).parents(".listing-events").hide();
      $(this).parents(".listing-events").siblings(".listing-front").show();
  });


// ADD ITEM

$(".add-button").on("click", function(e){
       e.preventDefault();
      $(this).hide();
      $(".add-product").removeClass("hide");
  });

$(".submit-item").on("click", function(e){
       e.preventDefault();
      $(".add-product").addClass("hide");
      $(".add-button").show();
  });


// SORTABLE

 // $('ul').sortable();


});