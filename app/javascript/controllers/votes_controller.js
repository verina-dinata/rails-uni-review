import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="votes"
export default class extends Controller {
  static targets = ["like"]
  connect() {

  }

  upvote(event) {
    event.preventDefault()
    console.log("helllooo")
    console.log(this.element)
    console.log(this.likeTarget)
  }
}
