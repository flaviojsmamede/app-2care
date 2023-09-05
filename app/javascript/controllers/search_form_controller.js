import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {

  static targets = ["input"];

  submit(event) {
    // Prevent the form from submitting via regular HTTP request
    event.preventDefault();

    const queryInput = this.inputTarget;

    queryInput.value = "";

  }

}
