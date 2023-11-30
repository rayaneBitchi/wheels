import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="datepicker"
import flatpickr from "flatpickr"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
    flatpickr(this.element)
  }
}
