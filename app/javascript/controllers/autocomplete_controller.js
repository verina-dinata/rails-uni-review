import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["form", "input", "list"]
  connect() {
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.listTarget.innerHTML = data
    })
  }

  clear() {
    setTimeout(() => {
      this.listTarget.innerHTML = ""
    }, 500);
  }

  filterUni() {
    const url = 'universities?query=' + this.inputTarget.value
    window.location = url
  }

  select(event){
    console.log(event.currentTarget.innerHTML)
    this.inputTarget.value = event.currentTarget.innerHTML
  }
}
