import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  static values = {
    icon: String,
    title: String,
    html: String,
    showConfirmButton: String,
    showCancelButton: String,
    cancelButtonText: String,
    confirmButtonText: String,
    url: String,
    submit: String
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

    if (this.submitValue === "true") {
      const url = this.element.parentNode.action

      fetch(url, {
        method: "POST",
        body: new FormData(this.element.parentNode)
      })
    }

    Swal.fire({
      position: 'middle',
      icon: this.iconValue,
      title: this.titleValue,
      text: this.htmlValue,
      showConfirmButton: this.showConfirmButtonValue === "true",
      showCancelButton: this.showCancelButtonValue === "true",
      cancelButtonText: this.cancelButtonTextValue,
      confirmButtonText: this.confirmButtonTextValue,
      customClass: {
        cancelButton: 'button-primary-2care'
      },
      hideClass: {
        cancelButton: 'swal2-cancel',
        cancelButton: 'swal2-confirm'
      }
    })
      .then((action) => {
        if (action.isConfirmed) {
          window.location.href = this.urlValue;
          event.target[event.type]();
        }})
      .catch(event.preventDefault())

    if (this.iconValue !== "warning") {
      event.target.setAttribute("disabled", "")
      event.target.innerText = "Report sent!"
    }
  }

}
