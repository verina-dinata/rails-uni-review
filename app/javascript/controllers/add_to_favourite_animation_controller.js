import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-to-favourite-animation"
export default class extends Controller {

  heartAnimation() {
    if (this.element.classList.contains("fa-solid")) {
      this.element.classList.remove('active')
      this.element.classList.remove('fa-solid')
      this.element.classList.add('fa-light')
    } else {
      this.element.classList.add('active')
      this.element.classList.add('fa-solid')
      this.element.classList.remove('fa-light')
    }
  };
}
