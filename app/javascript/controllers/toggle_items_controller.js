import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-items"
export default class extends Controller {

  static targets = ["addIcon", "addForm",]

  connect() {

  }

  displayForm(){
    this.addFormTarget.classList.toggle("d-none");
  }

}
