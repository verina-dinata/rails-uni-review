// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="autocomplete"
// export default class extends Controller {
//   static targets = ["form", "input", "list"]
//   connect() {
//     console.log(this.formTarget)
//     console.log(this.inputTarget)
//     console.log(this.listTarget)
//     console.log(this.formTarget.action)
//     console.log(this.inputTarget.value)
//   }

//   update() {
//     // const url = `http://localhost:3000/universities?query=${this.inputTarget.value}`
//     const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
//     fetch(url, {headers: {"Accept": "text/plain"}})
//     .then(response => response.text())
//     .then((data) => {
//       this.listTarget.innerHTML = data
//     })
//   }
// }
