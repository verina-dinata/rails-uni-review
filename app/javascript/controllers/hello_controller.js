
import "bootstrap"

var exampleEl = document.getElementById('btn-tooltip')
var tooltip = new bootstrap.Tooltip(exampleEl, {
  boundary: document.body // or document.querySelector('#boundary')
})
