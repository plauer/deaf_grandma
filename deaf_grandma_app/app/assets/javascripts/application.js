// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_tree ../../../vendor/assets/javascripts

$(document).ready( function(event, data) {

var doShit = function(event, data) {

  console.log(data.grandma_response)
  granny_response = document.createElement("p");
  $(granny_response).addClass("granny_response");
  $(granny_response).html('Grandma says "'+data.grandma_response+'"');
  $('#tits').prepend(granny_response);
  $('.granny_response').hide().fadeIn(3000);
}


  $('body').on('ajax:success', doShit)



})
