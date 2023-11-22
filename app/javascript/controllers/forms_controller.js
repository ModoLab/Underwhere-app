import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="forms"
export default class extends Controller {
  static targets = ["togglableElement"]
  connect() {
  }
  fire() {
    event.preventDefault();
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
