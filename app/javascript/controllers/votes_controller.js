import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="votes"
export default class extends Controller {
  static targets = ["totalLike", "upvoteIcon", "upvoteButton"]
  static values = { universityId: Number, reviewId: Number}
  connect() {

  }

  upvote(event) {
    event.preventDefault()
    console.log(event.target)
    if (event.target.classList.contains('unvoted')){
      this.create()
    } else {
      this.delete()
    }
  }

  create() {
    console.log('create')

    const url = `/universities/${this.universityIdValue}/reviews/${this.reviewIdValue}/votes`
    let csrfToken = document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content")
    fetch(url, {
      method: "POST",
      headers: {"Accept": "application/json",
      "Content-Type": "application/json",
      "X-CSRF-Token": csrfToken},
      body: JSON.stringify({"vote": "upvote"})
    }).then(
      response => {
        if (response.ok) {
          this.totalLikeTarget.innerText = parseInt(this.totalLikeTarget.innerText) + 1
          this.upvoteIconTarget.classList.remove("unvoted")
          this.upvoteIconTarget.classList.add("upvoted")
        }
      }
    )
  }

  delete() {
    console.log('delete')

    const url = `/universities/${this.universityIdValue}/reviews/${this.reviewIdValue}/votes`
    let csrfToken = document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content")
    fetch(url, {
      method: "DELETE",
      headers: {"Accept": "application/json",
      "Content-Type": "application/json",
      "X-CSRF-Token": csrfToken}
    }).then(
      response => {
        if (response.ok) {
          this.totalLikeTarget.innerText = parseInt(this.totalLikeTarget.innerText) - 1
          this.upvoteIconTarget.classList.remove("upvoted")
          this.upvoteIconTarget.classList.add("unvoted")
        }
      }
    )
  }
}
