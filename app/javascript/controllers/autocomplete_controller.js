import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["form", "input", "list"]
  connect() {
  }

  update(event) {
    event.preventDefault()
    const url = `${this.inputTarget.getAttribute('search-url')}?query=${this.inputTarget.value}`
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
    console.log("testtt")
    debugger
    if (this.inputTarget.value != "" && this.inputTarget.value != undefined) {
      const url = 'universities?query=' + this.inputTarget.value
      window.location = url
    }
  }

  select(event){
    this.inputTarget.value = event.currentTarget.innerHTML
  }
}
