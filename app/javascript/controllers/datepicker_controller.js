import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const options = {
      // altInput: true,
      // altFormat: "F j, Y",
      dateFormat: "Y-m-d",
    };

    flatpickr(this.element, options);
  }
}
