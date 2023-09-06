import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options"
export default class extends Controller {
  static values = { index: String, url: String }
  static targets = [ "optionBtn0", "optionBtn1", "optionBtn2", "selectBtn"]

  connect() {
    console.log(this.children)
  }

  select(event) {
    const childrenArray = Array.from(event.currentTarget.parentElement.children);
    childrenArray.forEach((element) => {
      if (element !== event.currentTarget) {
        element.classList.remove(element.dataset.index)
      }else {
        event.currentTarget.classList.add(event.currentTarget.dataset.index)
      }
    })
  }
}
