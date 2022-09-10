import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["heart", "form"]
  connect() {
<<<<<<< HEAD
  }

  addToFavorite(event) {
    // console.log("a")
=======
    console.log("hello")
  }

  addToFavorite(event) {
>>>>>>> 7e946db (stimulus)
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
          // make the heart black
          // this.heartTarget.classList.replace('far fa-heart')
          this.heartTarget.classList.replace('far', 'fas')
        } else {
          // make the heart white
          this.heartTarget.classList.replace('fas', 'far')
        }
      })


<<<<<<< HEAD
=======
    // this.heartTarget.html("far fa-heart position-absolute")
>>>>>>> 7e946db (stimulus)
  }
}
