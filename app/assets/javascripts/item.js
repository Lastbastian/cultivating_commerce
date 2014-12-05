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
       // e.preventDefault();
      $(".add-product").addClass("hide");
      $(".add-button").show();
  });


// SORTABLE

 // $('ul').sortable();

// var options = {
//   valueNames: [ 'listing' ]
// };

// console.log("here's something")

// var allListings = new List('all-listings', options);

// $('.filter-1').click(function() {
//   allListings.filter(function(item) {
//     debugger;
//     if (item.className == dataset.kind) {
//       return true;
//     } else {
//       return false;
//     }
//   });
// return false;
// });


$( ".filter-1" ).click(function() {
  $( "[data-kind=filter-1]" ).show( "slow" );
  $( "[data-kind=filter-2]" ).hide( "slow" );
  $( "[data-kind=filter-3]" ).hide( "slow" );
  $( "[data-kind=filter-4]" ).hide( "slow" );
  $( "[data-kind=filter-5]" ).hide( "slow" );
  $( "[data-kind=filter-6]" ).hide( "slow" );
});

$( ".filter-2" ).click(function() {
  $( "[data-kind=filter-1]" ).hide( "slow" );
  $( "[data-kind=filter-2]" ).show( "slow" );
  $( "[data-kind=filter-3]" ).hide( "slow" );
  $( "[data-kind=filter-4]" ).hide( "slow" );
  $( "[data-kind=filter-5]" ).hide( "slow" );
  $( "[data-kind=filter-6]" ).hide( "slow" );
});
$( ".filter-3" ).click(function() {
  $( "[data-kind=filter-1]" ).hide( "slow" );
  $( "[data-kind=filter-2]" ).hide( "slow" );
  $( "[data-kind=filter-3]" ).show( "slow" );
  $( "[data-kind=filter-4]" ).hide( "slow" );
  $( "[data-kind=filter-5]" ).hide( "slow" );
  $( "[data-kind=filter-6]" ).hide( "slow" );
});
$( ".filter-4" ).click(function() {
  $( "[data-kind=filter-1]" ).hide( "slow" );
  $( "[data-kind=filter-2]" ).hide( "slow" );
  $( "[data-kind=filter-3]" ).hide( "slow" );
  $( "[data-kind=filter-4]" ).show( "slow" );
  $( "[data-kind=filter-5]" ).hide( "slow" );
  $( "[data-kind=filter-6]" ).hide( "slow" );
});
$( ".filter-5" ).click(function() {
  $( "[data-kind=filter-1]" ).hide( "slow" );
  $( "[data-kind=filter-2]" ).hide( "slow" );
  $( "[data-kind=filter-3]" ).hide( "slow" );
  $( "[data-kind=filter-4]" ).hide( "slow" );
  $( "[data-kind=filter-5]" ).show( "slow" );
  $( "[data-kind=filter-6]" ).hide( "slow" );
});
$( ".filter-6" ).click(function() {
  $( "[data-kind=filter-1]" ).hide( "slow" );
  $( "[data-kind=filter-2]" ).hide( "slow" );
  $( "[data-kind=filter-3]" ).hide( "slow" );
  $( "[data-kind=filter-4]" ).hide( "slow" );
  $( "[data-kind=filter-5]" ).hide( "slow" );
  $( "[data-kind=filter-6]" ).show( "slow" );
});
});
