import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-items"
export default class extends Controller {

  static targets = ["searchIcon", "searchForm",]

  connect() {
  }

  displaySearch(){
    this.searchFormTarget.classList.toggle("d-none");
  }

}
