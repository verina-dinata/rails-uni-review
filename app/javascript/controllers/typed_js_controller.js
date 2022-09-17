import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log("Connected to typed JS")
    new Typed(this.element, {
      strings: ["Looking for your next educational journey?", "Start your search here"],
      typeSpeed: 70,
      loop: true
    })
  }
}
