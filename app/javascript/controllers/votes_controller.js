import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="votes"
export default class extends Controller {
  static targets = ["totalLike", "upvoteIcon", "upvoteButton"]
  static values = { universityId: Number, reviewId: Number}
  connect() {

  }

  upvote(event) {
    console.log("testttt")
    event.preventDefault()

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
    })
      .then(response =>  {if (response.ok){
        // console.log("success")

        // this.upvoteIconTarget.classList.remove("unvoted")
        // this.upvoteIconTarget.classList.add("upvoted")
        if (this.upvoteIconTarget.vote) {
          this.totalLikeTarget.innerText = parseInt(this.totalLikeTarget.innerText) + 1
          this.upvoteIconTarget.classList.remove("upvoted")
          this.upvoteIconTarget.classList.add("unvoted")
        } else {
          this.totalLikeTarget.innerText = parseInt(this.totalLikeTarget.innerText) - 1
          this.upvoteIconTarget.classList.remove("unvoted")
          this.upvoteIconTarget.classList.add("upvoted")

        }
        // this.upvoteButtonTarget.disabled = true
      } else {
        console.log("fails")
      }

      })

      // .then((data) => {
      //   // console.log(data)
      // })
    // // console.log(url)
    // const likeNumber = this.totalLikeTarget
    // // this.totalLikeTarget.innerText += 1
    // // console.log(likeNumber.innerText)
    // let a = likeNumber.innerText
    // // parseInt(a) += 1
    // console.log(a)
    // // console.log(this.upvoteIconTarget)


    // If user already upvotes & clicks upvote again,
      // upvote icon shouldn't be clicked (undo upvote) & upvote total decrease by 1
    // else
      // upvote icon turns green * upvote total increase by 1
  }


}
