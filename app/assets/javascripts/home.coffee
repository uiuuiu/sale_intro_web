# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
prevScrollpos = window.pageYOffset

window.onscroll = ->
  currentScrollPos = window.pageYOffset
  if prevScrollpos > currentScrollPos
    $('nav.navbar.navbar-inverse').removeClass('navbar-fixed-top')
    $('.nav.navbar-nav.main_nav li').removeClass('li-fixed-top')
  else
    $('nav.navbar.navbar-inverse').addClass('navbar-fixed-top')
    $('.nav.navbar-nav.main_nav li').addClass('li-fixed-top')
  prevScrollpos = currentScrollPos
  return