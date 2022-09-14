import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="votes"
export default class extends Controller {
  static targets = ["totalUpvote", "upvoteIcon", "downvoteIcon", "totalDownvote"]
  static values = { universityId: Number, reviewId: Number}
  connect() {

  }

  upvote(event) {
    event.preventDefault()
    if (this.upvoteIconTarget.classList.contains('unvoted')){
      this.create("upvote",  "upvoted", this.upvoteIconTarget)
    } else {
      this.delete("upvoted", this.upvoteIconTarget)
    }
  }

  downvote(event) {
    event.preventDefault()
    if (this.downvoteIconTarget.classList.contains('unvoted')){
      this.create("downvote", "downvoted", this.downvoteIconTarget)
    } else {
      this.delete("downvoted", this.downvoteIconTarget)
    }
  }

  create(vote, cssClass, voteIcon) {
    this.upvoteIconTarget.classList.add("unvoted")
    this.downvoteIconTarget.classList.add("unvoted")

    const url = `/universities/${this.universityIdValue}/reviews/${this.reviewIdValue}/votes`

    fetch(url, {
      method: "POST",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      body: JSON.stringify({"vote": vote})
    })
      .then(response => response.json())
      .then(data => {
        this.totalUpvoteTarget.innerText = data.total_upvote
        this.totalDownvoteTarget.innerText = data.total_downvote
        voteIcon.classList.remove("unvoted")
        voteIcon.classList.add(cssClass)

      }
    )
  }

  delete(cssClass, voteIcon) {
    console.log('delete')

    const url = `/universities/${this.universityIdValue}/reviews/${this.reviewIdValue}/votes`

    fetch(url, {
      method: "DELETE",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }
    })
      .then(response => response.json())
      .then(data => {
        this.totalUpvoteTarget.innerText = data.total_upvote
        this.totalDownvoteTarget.innerText = data.total_downvote
        voteIcon.classList.remove(cssClass)
        voteIcon.classList.add("unvoted")
      }
    )
  }
}
