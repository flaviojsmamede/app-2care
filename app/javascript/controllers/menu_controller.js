import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }
}

// Connects to data-controller="menu"
// export default class extends Controller {
//   static targets = ["tab"];

//   connect() {
//     this.activeTab = null; // Track the currently active tab

//     // Initialize the first tab as active
//     this.activateTab(this.tabTargets[0]);
//   }

//   toggleTab(event) {
//     event.preventDefault();
//     const clickedTab = event.currentTarget;

//     if (clickedTab !== this.activeTab) {
//       this.deactivateTab(this.activeTab);
//       this.activateTab(clickedTab);
//     }
//   }

//   activateTab(tab) {
//     tab.classList.add("active");
//     this.activeTab = tab;
//   }

//   deactivateTab(tab) {
//     tab.classList.remove("active");
//   }
// }
