import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="report"
export default class extends Controller {
  static targets = ["formCarouselItem"]

  callSubmit() {
    const activeItem = document.querySelector(".active")

    const form = activeItem.querySelector("form")
    const submitBtn = form.querySelector("input[type='submit']")
    console.log("submitted")
    submitBtn.click()
  }

  checkReportLink(event) {
    const checkReportLink = document.querySelector(".check-report-link");
      event.preventDefault();
      const form = activeItem.querySelector("form")
      const submitBtn = form.querySelector("input[type='submit']")
      submitBtn.click()

  }
}
