import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["heart", "form"]
  static values = { favoriteId: Number, page: String }
  connect() {

  }

  addToFavorite(event) {
    // console.log("a")
    event.preventDefault()

    let csrfToken = document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content")
    fetch(this.formTarget.action, {
      method: "POST",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken,
      },
      body: JSON.stringify({})
    })
      .then(response => response.json())
      .then(data => {
        if (data.favorite) {
          this.heartTarget.classList.replace('far', 'fas')
        } else {
          this.heartTarget.classList.replace('fas', 'far')
          if(this.pageValue === "/favorites"){
            document.querySelector(`#favorite-${this.favoriteIdValue}`).remove();
          }
        }
      })
  }
}
