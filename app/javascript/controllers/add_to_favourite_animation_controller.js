import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-to-favourite-animation"
export default class extends Controller {

  var heartBtn = document.querySelectorAll("#heart-button");

  heartAnimation(heartBtn) {
    if ($('span').hasClass("fa-star")) {
        $('.click').removeClass('active')
      setTimeout(function() {
        $('.click').removeClass('active-2')
      }, 30)
        $('.click').removeClass('active-3')
      setTimeout(function() {
        $('span').removeClass('fa-star')
        $('span').addClass('fa-star-o')
      }, 15)
    } else {
      $('.click').addClass('active')
      $('.click').addClass('active-2')
      setTimeout(function() {
        $('span').addClass('fa-star')
        $('span').removeClass('fa-star-o')
      }, 150)
      setTimeout(function() {
        $('.click').addClass('active-3')
      }, 150)
      $('.info').addClass('info-tog')
      setTimeout(function(){
        $('.info').removeClass('info-tog')
      },1000)
    }
  };
}
