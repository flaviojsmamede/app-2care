import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  static values = {
    icon: String,
    alertTitle: String,
    alertHtml: String,
    SeeReportButton: String,
    CloseButton: String
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked
    Swal.fire({
      position: 'middle',
      icon: 'success',
      title: 'The report was saved and sent to the family!',
      showConfirmButton: false,
      timer: 1500
    }).then((action) => {
        if (action.isConfirmed) {
          event.target[event.type]();
        }
        })
        .catch(event.preventDefault())
      }
      }
