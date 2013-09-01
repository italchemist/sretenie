# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#menu-nav.second-menu li a").on "click", ->
    $.scrollTo $(this).attr("href").replace("/", ""),
      duration: 250
      offset:
        top: -105