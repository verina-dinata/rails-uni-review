import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "form", "close"]
  static values = { position: String }

  connect() {

    console.log(this.element)
    console.log(this.itemsTarget)
    console.log(this.formTarget)
  }

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
          if (this.itemsTarget.children.length > 5) {
            this.itemsTarget.removeChild(this.itemsTarget.lastElementChild)
          }
        }
        this.formTarget.outerHTML = data.form
        this.closeTarget.click()
      })

    }
}
