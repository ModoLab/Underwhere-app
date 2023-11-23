import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="forms"
export default class extends Controller {
  
  connect() {
  }
  displayModal() {
    event.preventDefault();
    //console.log("coucou")
  }
}
