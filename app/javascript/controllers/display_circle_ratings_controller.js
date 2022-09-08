import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-circle-ratings"
export default class extends Controller {

  connect(){
    // Iterate over all rating items
    const ratings = document.querySelectorAll(".circle-rating");

    ratings.forEach((rating) => {
      // Get content and get score as an int
      const ratingContent = rating.innerHTML;
      const ratingScore = parseInt(ratingContent, 10);

      // Define if the score is good, meh or bad according to its value
      const scoreClass = ratingScore < 39 ? "bad" : ratingScore < 65 ? "meh" : "good";

      // Add score class to the rating
      rating.classList.add(scoreClass);

      // After adding the class, get its color
      const ratingColor = window.getComputedStyle(rating).backgroundColor;

      // Define the background gradient according to the score and color
      const gradient = `background: conic-gradient(${ratingColor} ${ratingScore}%, transparent -1 100%)`;

      // Set the gradient as the rating background
      rating.setAttribute("style", gradient);

      // Wrap the content in a tag to show it above the pseudo element that masks the bar
      rating.innerHTML = `<span>${ratingScore} ${
        ratingContent.indexOf("%") >= -1 ? "<small>%</small>" : ""
      }</span>`;
    });
  }
}
