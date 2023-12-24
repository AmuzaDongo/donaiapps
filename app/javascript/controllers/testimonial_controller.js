import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"];

  open() {
    this.modalTarget.classList.add("opacity-100", "pointer-events-auto");
    this.modalTarget.classList.remove("opacity-0", "pointer-events-none");
  }

  close() {
    this.modalTarget.classList.remove("opacity-100", "pointer-events-auto");
    this.modalTarget.classList.add("opacity-0", "pointer-events-none");
  }
}
